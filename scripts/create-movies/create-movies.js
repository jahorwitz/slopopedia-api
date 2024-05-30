const axios = require("axios");
const dotenv = require("dotenv");
const { createReadStream, readFileSync } = require("fs-extra");
const csv = require("csv-parser");
const throat = require("throat");

dotenv.config();

/* -------------------------------------------------------------------------- */
/*                              helper functions                              */
/* -------------------------------------------------------------------------- */

// check if a keyword type already exists in the database
async function kwTypeExists(kwType, sessionToken) {
  const response = await axios.post(
    "http://127.0.0.1:8080/api/graphql",
    {
      query: `
        query GetKeywordType($name: StringFilter!) {
          keywordTypes(where: { name: $name }) {
            id
            name
          }
        }
      `,
      variables: {
        name: { equals: kwType },
      },
    },
    {
      headers: {
        Cookie: `keystonejs-session=${sessionToken}`,
      },
    }
  );

  //console.log({ keywordData: response.data.data.keywordTypes });
  return response.data.data.keywordTypes?.length > 0;
}

// check if a keyword already exists in the database
async function keywordExists(keyword, sessionToken) {
  const response = await axios.post(
    "http://127.0.0.1:8080/api/graphql",
    {
      query: `
        query GetKeyword($name: StringFilter!) {
          keywords(where: { name: $name }) {
            id
            name
          }
        }
      `,
      variables: {
        name: { equals: keyword },
      },
    },
    {
      headers: {
        Cookie: `keystonejs-session=${sessionToken}`,
      },
    }
  );

  //console.log({ keywordData: response.data.data.keywords });
  return response.data.data.keywords?.length > 0;
}

// check if a movie already exists in the database
async function movieExists(title, sessionToken) {
  const response = await axios.post(
    "http://127.0.0.1:8080/api/graphql",
    {
      query: `
        query GetMovie($title: StringFilter!) {
          movies(where: { title: $title }) {
            id
            title
          }
        }
      `,
      variables: {
        title: { equals: title },
      },
    },
    {
      headers: {
        Cookie: `keystonejs-session=${sessionToken}`,
      },
    }
  );
  //console.log({ movieData: response.data.data?.movies });
  return response.data.data.movies.length > 0;
}

/* -------------------------------------------------------------------------- */
/*                                seed database                               */
/* -------------------------------------------------------------------------- */

(async () => {
  /* ---------------------------- get session token --------------------------- */
  const {
    data: {
      data: {
        authenticateUserWithPassword: { sessionToken },
      },
    },
  } = await axios.post("http://127.0.0.1:8080/api/graphql", {
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
  });

  /* -------------------------- handle keyword types -------------------------- */
  // const kwTypesFile = readFileSync("./scripts/KWTypes.csv", "utf8");
  // const [, ...kwTypesLines] = kwTypesFile.split("\n");

  // const allKwTypes = [];

  // for (const line of kwTypesLines) {
  //   const [kwTypesString] = line.split(`,`);
  //   if (!kwTypesString) continue;
  //   allKwTypes.push(kwTypesString);
  // }

  // const {
  //   data: {
  //     data: { createKeywordTypes: createdKWTypes },
  //   },
  // } = await axios.post(
  //   "http://127.0.0.1:8080/api/graphql",
  //   {
  //     query: `
  //     mutation CreateKeywordTypes($data: [KeywordTypeCreateInput!]!) {
  //       createKeywordTypes(data: $data) {
  //           id
  //           name
  //       }
  //     }
  //     `,
  //     variables: {
  //       data: allKwTypes.map((kwType) => {
  //         return { name: kwType };
  //       }),
  //     },
  //   },
  //   {
  //     headers: {
  //       Cookie: `keystonejs-session=${sessionToken}`,
  //     },
  //   }
  // );

  const processKeywordTypesCSV = () => {
    return new Promise((resolve, reject) => {
      const keywordTypePromises = [];
      createReadStream("./scripts/KWTypes.csv")
        .pipe(csv())
        .on("data", async (keywordType) => {
          const promise = (async () => {
            if (await kwTypeExists(keywordType["Display"], sessionToken)) {
              console.log(
                `KeywordType "${keywordType["Display"]}" already exists.`
              );
              return;
            }
            // create kwType
            return await axios.post(
              "http://127.0.0.1:8080/api/graphql",
              {
                query: `
              mutation CreateKeywordType($data: KeywordTypeCreateInput!) {
                createKeywordType(data: $data) {
                      id
                      name
                  }
              }
              `,
                variables: {
                  data: {
                    name: keywordType["Display"],
                  },
                },
              },
              {
                headers: {
                  Cookie: `keystonejs-session=${sessionToken}`,
                },
              }
            );
          })();

          keywordTypePromises.push(promise);
        })
        .on("end", async () => {
          try {
            const keywordTypeResults = await Promise.all(keywordTypePromises);
            //console.log({ keywordTypePromises, keywordTypeResults });
            const createdKeywordTypes = keywordTypeResults.map(
              (result) => result?.data?.data?.createKeywordType
            );
            console.log(
              `Successfully created ${createdKeywordTypes.length} keywords!`
            );
            //console.log({ createdKeywordTypes });
            resolve(createdKeywordTypes);
          } catch (error) {
            reject(error);
          }
        })
        .on("error", (error) => reject(error));
    });
  };

  /* ----------------------------- handle keywords ---------------------------- */
  const processKeywordsCSV = (createdKwTypes) => {
    return new Promise((resolve, reject) => {
      const keywordPromises = [];
      createReadStream("./scripts/create-movies/Keywords.csv")
        .pipe(csv())
        .on("data", async (keyword) => {
          const promise = (async () => {
            if (await keywordExists(keyword["Keyword"], sessionToken)) {
              console.log(`Keyword "${keyword["Keyword"]}" already exists.`);
              return;
            }
            // so, current problem is that createdKwTypes is undefined, if we run this script and no new kwTypes are created
            console.log({ createdKwTypes });
            // each keyword only has one keyword type, so we only need to find one kwType Id
            const kwTypeId = createdKwTypes.find(
              (createdKwType) => keyword["KWType"] === createdKwType.name
            ).id;

            return await axios.post(
              "http://127.0.0.1:8080/api/graphql",
              {
                query: `
              mutation CreateKeyword($data: KeywordCreateInput!) {
                createKeyword(data: $data) {
                      id
                      name
                  }
              }
              `,
                variables: {
                  data: {
                    name: keyword["Keyword"],
                    keywordType: {
                      connect: {
                        id: kwTypeId,
                      },
                    },
                    // do i need to convert a string to an int?
                    handicap: keyword["Handicap"],
                  },
                },
              },
              {
                headers: {
                  Cookie: `keystonejs-session=${sessionToken}`,
                },
              }
            );
          })();

          keywordPromises.push(promise);
        })
        .on("end", async () => {
          try {
            const keywordResults = await Promise.all(keywordPromises);
            //console.log({ keywordPromises, keywordResults });
            const createdKeywords = keywordResults.map(
              (result) => result.data.data.createKeyword
            );
            console.log(
              `Successfully created ${createdKeywords.length} keywords!`
            );
            console.log({ createdKeywords });
            resolve(createdKeywords);
          } catch (error) {
            reject(error);
          }
        })
        .on("error", (error) => reject(error));
    });
  };

  /* ----------------------------- handle movies ----------------------------- */
  const processMoviesCSV = (createdKeywords) => {
    return new Promise((resolve, reject) => {
      const moviePromises = [];
      const limitedCreateMovie = throat(10, async (movie) => {
        if (await movieExists(movie["Title"], sessionToken)) {
          //console.log(`Movie "${movie["Title"]}" already exists.`);
          return;
        }

        //console.log({ createdKeywords });

        const keywordIds = movie["Keywords"]
          ? movie["Keywords"]
              .split(",")
              .map((x) =>
                createdKeywords.find((keyword) => keyword.name === x.trim())
              )
              .filter((x) => !!x)
              .map((keyword) => ({ id: keyword.id }))
          : [];

        const promise = axios.post(
          "http://127.0.0.1:8080/api/graphql",
          {
            query: `
          mutation CreateMovie($data: MovieCreateInput!) {
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
                status: "published",
                tomatoScore: parseInt(movie["Tomato Score"]),
                keywords: {
                  connect: keywordIds,
                },
              },
            },
          },
          {
            headers: {
              Cookie: `keystonejs-session=${sessionToken}`,
            },
          }
        );
        return promise;
      });

      createReadStream("./scripts/create-movies/Movies.csv")
        .pipe(csv())
        .on("data", (movie) => {
          moviePromises.push(limitedCreateMovie(movie));
        })
        .on("end", async () => {
          try {
            const movieResults = await Promise.all(moviePromises);
            console.log(`Successfully created ${movieResults.length} movies!`);
            resolve();
          } catch (error) {
            reject(error);
          }
        })
        .on("error", (error) => reject(error));
    });
  };

  try {
    const createdKwTypes = await processKeywordTypesCSV();
    const createdKeywords = await processKeywordsCSV(createdKwTypes);
    await processMoviesCSV(createdKeywords);
  } catch (error) {
    console.error("Error processing CSV files:", error);
  }
})();
