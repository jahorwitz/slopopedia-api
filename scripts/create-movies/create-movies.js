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

  const seedKeywordTypesFromKWTypesCSV = () => {
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
              // no need to update the kwType
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

  const seedKeywordTypesFromKeywordsCSV = () => {
    return new Promise((resolve, reject) => {
      const keywordTypePromises = [];
      createReadStream("./scripts/create-movies/Keywords.csv")
        .pipe(csv())
        .on("data", async (keyword) => {
          const promise = (async () => {
            if (await kwTypeExists(keyword["KWType"], sessionToken)) {
              console.log(`KeywordType "${keyword["KWType"]}" already exists.`);
              // no need to update the kwType
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
                    name: keyword["KWType"],
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
  const seedKeywordsFromKeywordsCSV = async () => {
    // query to get all kwTypes from the database
    const {
      data: {
        data: { keywordTypes: allKwTypes },
      },
    } = await axios.post(
      "http://127.0.0.1:8080/api/graphql",
      {
        query: `
        query GetKeywordTypes {
          keywordTypes {
            name
            id
          }
        }
      `,
      },
      {
        headers: {
          Cookie: `keystonejs-session=${sessionToken}`,
        },
      }
    );

    console.log("allKwTypes", allKwTypes);

    return new Promise((resolve, reject) => {
      const keywordPromises = [];
      createReadStream("./scripts/create-movies/Keywords.csv")
        .pipe(csv())
        .on("data", async (keyword) => {
          const promise = (async () => {
            if (await keywordExists(keyword["Keyword"], sessionToken)) {
              console.log(`Keyword "${keyword["Keyword"]}" already exists.`);
              // each keyword only has one keyword type, so we only need to find one kwType Id
              const kwTypeId = allKwTypes.find(
                (createdKwType) => keyword["KWType"] === createdKwType.name
              ).id;
              // update the keyword with the handicap and the kwType
              return await axios.post(
                "http://127.0.0.1:8080/api/graphql",
                {
                  query: `
                mutation UpdateKeyword($where: KeywordWhereUniqueInput!, $data: KeywordUpdateInput!) {
                  updateKeyword(where: $where, data: $data) {
                        id
                        name
                    }
                }
                `,
                  variables: {
                    where: { id: "need the keyword id" }, //!!!!
                    data: {
                      keywordType: {
                        connect: {
                          id: kwTypeId,
                        },
                      },
                      handicap: parseInt(keyword["Handicap"]),
                    },
                  },
                },
                {
                  headers: {
                    Cookie: `keystonejs-session=${sessionToken}`,
                  },
                }
              );
            }

            // each keyword only has one keyword type, so we only need to find one kwType Id
            const kwTypeId = allKwTypes.find(
              (createdKwType) => keyword["KWType"] === createdKwType.name
            ).id;

            // create a new keyword
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
                    handicap: parseInt(keyword["Handicap"]),
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
            // console.log({ keywordPromises, keywordResults });
            // const createdKeywords = keywordResults.map(
            //   (result) => result.data.data.createKeyword
            // );
            console.log(
              `Successfully created/updated ${keywordPromises.length} keywords!`
            );
            resolve();
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
    await seedKeywordTypesFromKWTypesCSV();
    await seedKeywordTypesFromKeywordsCSV();
    await seedKeywordsFromKeywordsCSV();
    //await processMoviesCSV();
  } catch (error) {
    console.error("Error processing CSV files:", error);
  }
})();
