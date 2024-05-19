const axios = require("axios");
const dotenv = require("dotenv");
const { createReadStream, readFileSync } = require("fs-extra");
const csv = require("csv-parser");

dotenv.config();

(async () => {
  const keywordsFile = readFileSync(
    "./scripts/create-movies/Keywords.csv",
    "utf8"
  );
  const [, ...lines] = keywordsFile.split("\n");

  const apiUri =
    process.env.NODE_ENV === "production"
      ? "https://slopopedia-api-a5fe9aef64e8.herokuapp.com/api/graphql"
      : "http://localhost:8080/api/graphql";

  // Get session token for API calls
  const {
    data: {
      data: {
        authenticateUserWithPassword: { sessionToken },
      },
    },
  } = await axios.post(
    apiUri,
    {
      query: `
        mutation Mutation($username: String!, $password: String!) {
          authenticateUserWithPassword(username: $username, password: $password) {
            ... on UserAuthenticationWithPasswordSuccess {
              sessionToken
            }
          }
        }
      `,
      variables: {
        username: process.env.ADMIN_PANEL_USERNAME,
        password: process.env.ADMIN_PANEL_PASSWORD,
      },
    }
  );

  const allKeywords = [];

  for (line of lines) {
    const [keywordString] = line.split(`,`);
    if (!keywordString) continue;
    allKeywords.push(keywordString);
  }

  const {
    data: {
      data: { createKeywords: createdKeywords },
    },
  } = await axios.post(
    apiUri,
    {
      query: `
      mutation CreateKeywords($data: [KeywordCreateInput!]!) {
        createKeywords(data: $data) {
            id
            name
        }
      }
      `,
      variables: {
        data: allKeywords.map((keyword) => ({ name: keyword })),
      },
    },
    {
      headers: {
        Cookie: `keystonejs-session=${sessionToken}`,
      },
    }
  );

  const rows = [];
  createReadStream("./scripts/create-movies/Movies.csv")
    .pipe(csv())
    .on("data", (data) => rows.push(data))
    .on("end", async () => {
      const results = await Promise.all(
        rows.map((movie) =>
          axios.post(
            apiUri,
            {
              query: `
            mutation Mutation($data: MovieCreateInput!) {
                createMovie(data: $data) {
                    id
                }
            }
            `,
              variables: {
                data: {
                  description: movie["Title"],
                  handicap: parseInt(movie["Handicap"]),
                  howToWatch: movie["Availability"],
                  releaseYear: parseInt(movie["Release Year"]),
                  runtime: parseInt(movie["Runtime"]),
                  title: movie["Title"],
                  tomatoScore: parseInt(movie["Tomato Score"]),
                  status: 'published',
                  ...(movie["Keywords"]
                    ? {
                        keywords: {
                          connect: movie["Keywords"]
                            .split(",")
                            .map((x) =>
                              createdKeywords.find(
                                (keyword) => keyword.name === x.trim()
                              )
                            )
                            .filter((x) => !!x)
                            .map((keyword) => ({ id: keyword.id })),
                          create: movie["Keywords"]
                            .split(",")
                            .filter(
                              (x) =>
                                !createdKeywords.some(
                                  (keyword) => keyword.name === x.trim()
                                )
                            )
                            .map((x) => ({ name: x.trim() })),
                        },
                      }
                    : {}),
                },
              },
            },
            {
              headers: {
                Cookie: `keystonejs-session=${sessionToken}`,
              },
            }
          )
        )
      );

      console.log(`Successfully created ${results.length} movies!`);
    });
})();
