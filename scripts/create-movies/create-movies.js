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
            keywordType {
              name
            }
            handicap
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
async function movieExists(title, releaseYear, sessionToken) {
  // a movie exists in the database if both the title and release year are matched
  const response = await axios.post(
    "http://127.0.0.1:8080/api/graphql",
    {
      query: `
      query GetMovies($where: MovieWhereInput!) {
        movies(where: $where) {
            id
            title
          }
        }
      `,
      variables: {
        where: {
          title: { equals: title },
          AND: [
            {
              releaseYear: { equals: parseInt(releaseYear) },
            },
          ],
        },
      },
    },
    {
      headers: {
        Cookie: `keystonejs-session=${sessionToken}`,
      },
    }
  );

  if (title === "Tango and Cash") {
    console.log("???");
  }
  if (response.data.data.movies.length <= 0) {
    return false;
  }
  //console.log({ movieData: response.data.data?.movies });
  return response.data.data.movies[0];
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
    return new Promise((resolve, reject) => {
      const keywordPromises = [];
      createReadStream("./scripts/create-movies/Keywords.csv")
        .pipe(csv())
        .on("data", async (keyword) => {
          const promise = (async () => {
            if (await keywordExists(keyword["Keyword"], sessionToken)) {
              console.log(
                `Keyword "${keyword["Keyword"]}" already exists. Updating...`
              );

              // update the keyword with its handicap and kwType
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
                    where: { name: keyword["Keyword"] },
                    data: {
                      keywordType: {
                        connect: {
                          name: keyword["KWType"],
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

            // create a new keyword
            console.log(`Creating keyword "${keyword["Keyword"]}".`);
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
                        name: keyword["KWType"],
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
            await Promise.all(keywordPromises);
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

  const seedKeywordsFromMoviesCSV = async () => {
    return new Promise((resolve, reject) => {
      const keywordPromises = [];

      const limitedCreateKeywords = throat(100, async (keyword) => {
        if (await keywordExists(keyword, sessionToken)) {
          // no need to update the keyword, because in Movies.csv, there is no handicap or kwType listed
          return;
        }

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
                name: keyword,
              },
            },
          },
          {
            headers: {
              Cookie: `keystonejs-session=${sessionToken}`,
            },
          }
        );
      });

      createReadStream("./scripts/create-movies/Movies.csv")
        .pipe(csv())
        .on("data", async (movie) => {
          // get an array of all the keywords for a particular movie
          const currentMovieKeywords = movie["Keywords"]
            .split(",")
            .map((keyword) => keyword.trim());

          for (const keyword of currentMovieKeywords) {
            keywordPromises.push(limitedCreateKeywords(keyword));
          }
        })
        .on("end", async () => {
          try {
            await Promise.all(keywordPromises);
            console.log(
              `Successfully checked ${keywordPromises.length} keywords!`
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
  const seedMoviesFromMoviesCSV = () => {
    return new Promise((resolve, reject) => {
      const moviePromises = [];
      const limitedCreateMovie = throat(10, async (movie) => {
        const checkedMovie = await movieExists(
          movie["Title"],
          movie["Release Year"],
          sessionToken
        );
        if (checkedMovie) {
          //console.log(`Movie "${movie["Title"]}" already exists. Updating...`);
          const currentMovieKeywords = movie["Keywords"]
            .split(",")
            .map((keyword) => {
              return { name: keyword.trim() };
            });
          // update the movie
          return await axios
            .post(
              "http://127.0.0.1:8080/api/graphql",
              {
                query: `
            mutation UpdateMovie($where: MovieWhereUniqueInput!, $data: MovieUpdateInput!) {
              updateMovie(where: $where, data: $data) {
                    id
                    title
                }
            }
            `,
                variables: {
                  where: { id: checkedMovie.id },
                  data: {
                    description: movie["Description"],
                    handicap: parseInt(movie["Handicap"]),
                    howToWatch: movie["Availability"],
                    releaseYear: parseInt(movie["Release Year"]),
                    runtime: parseInt(movie["Runtime"]),
                    title: movie["Title"],
                    status: "published",
                    tomatoScore: parseInt(movie["Tomato Score"]),
                    keywords: {
                      connect: currentMovieKeywords,
                    },
                  },
                },
              },
              {
                headers: {
                  Cookie: `keystonejs-session=${sessionToken}`,
                },
              }
            )
            .catch((error) => {
              if (error.response) {
                console.error("Error response:", error.response.data);
              } else {
                console.error("Error message:", error.message);
              }
            });
        }

        const currentMovieKeywords = movie["Keywords"]
          .split(",")
          .map((keyword) => {
            return { name: keyword.trim() };
          });

        // create movie
        return axios
          .post(
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
                  description: movie["Description"],
                  handicap: parseInt(movie["Handicap"]),
                  howToWatch: movie["Availability"],
                  releaseYear: parseInt(movie["Release Year"]),
                  runtime: parseInt(movie["Runtime"]),
                  title: movie["Title"],
                  status: "published",
                  tomatoScore: parseInt(movie["Tomato Score"]),
                  keywords: {
                    connect: currentMovieKeywords,
                  },
                },
              },
            },
            {
              headers: {
                Cookie: `keystonejs-session=${sessionToken}`,
              },
            }
          )
          .then((data) => {
            if (movie["Title"] === "Tango and Cash") {
              console.log("!!!"); // Finally solved! The description field for movies is restricted in length. I should delete the migration file, update the movie schema and do npm run dev
            }
          })
          .catch((err) => {
            console.error(err, movie["Title"]);
          });
      });

      createReadStream("./scripts/create-movies/Movies.csv")
        .pipe(csv())
        .on("data", (movie) => {
          moviePromises.push(limitedCreateMovie(movie));
        })
        .on("end", async () => {
          try {
            const movieResults = await Promise.all(moviePromises);
            console.log(
              `Successfully created/updated ${movieResults.length} movies!`
            );
            resolve();
          } catch (error) {
            reject(error);
          }
        })
        .on("error", (error) => reject(error));
    });
  };

  /* ------------------------------ handle sounds ----------------------------- */
  // each row in Slopsounds.csv only has one slop associated with it
  // maybe I seed sounds last?

  try {
    await seedKeywordTypesFromKWTypesCSV();
    await seedKeywordTypesFromKeywordsCSV();
    await seedKeywordsFromKeywordsCSV();
    //await seedKeywordsFromMoviesCSV();
    await seedMoviesFromMoviesCSV();
  } catch (error) {
    console.error("Error processing CSV files:", error);
  }
})();
