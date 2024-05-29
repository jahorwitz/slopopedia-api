import dotenv from "dotenv";
import { config } from "@keystone-6/core";
import { TypeInfo, Context } from ".keystone/types";
import { uploadFile } from "./s3";
import { main } from "./s3-large-upload";
const fileUpload = require("express-fileupload");
dotenv.config();
//import { lists } from './schema';
import * as Models from "./models";
import { withAuth, session } from "./auth";
const S3_BUCKET_NAME = process.env.S3_BUCKET_NAME;

export default withAuth(
  config<TypeInfo>({
    server: {
      port: 8080,
      cors: {
        origin: [
          "http://localhost:3000",
          "http://slopopedia.s3-website-us-east-1.amazonaws.com",
        ],
      },
      maxFileSize: 200 * 1024 * 1024,
      extendExpressApp: (app, context) => {
        app.use(fileUpload());
        app.post("/api/movie", async (req, res) => {
          const userId = req.body.userId;
          const movieTitle = req.body.movieTitle;
          const movieImage = req.body.movieImage;
          const fileData = {
            movieTitle: req.body.movieTitle,
            movieImage: req.body.movieImage,
          };
          console.log({ fileData });

          const s3upload = await uploadFile();
          console.log(s3upload, "hello s3upload");
          //req.body.formData look this up
          //pass that into upload file call
          console.log(req.body, "hello keystone line 31");

          //after calling upload file we call graphQL to insert movie into db
          //find keystone examples

          //const context = await commonContext.withRequest(req, res);
          //if (!context.session) return res.status(401).end()
          //const isDraft = req.query?.draft === "1";
          // const tasks = await context.query.Movie.createOne(
          //   //gets us access to graphql
          //   {
          //     data: {
          //       author: {},
          //       title: "",
          //       description: "",
          //       releaseYear: null,
          //       runtime: null,
          //       photo: null,
          //       tomatoScore: null,
          //       howToWatch: "",
          //       handicap: null,
          //       keywords: {},
          //     },
          //   },
          // );

          res.json({ success: true });
        });
      },

      // extendHttpServer: (server, commonContext) => {
      //   // e.g
      //   //   http://localhost:3000/rest/posts/clu7x6ch90002a89s6l63bjb5
      //   //
      //   server.on("request", async (req, res) => {
      //     if (!req.url?.startsWith("/api/movie")) return;

      //     // this example HTTP GET handler retrieves a post in the database for your context
      //     //   returning it as JSON
      //     const context = await commonContext.withRequest(req, res);
      //     // if (!context.session) return res.status(401).end()

      //     const task = await context.query.Movie.createOne({
      //       where: {
      //         id: req.url.slice("/api/movie".length),
      //       },
      //       //example only - will update for movie
      //       query: `
      //         id
      //         title
      //         content
      //         draft
      //       `,
      //     });

      //     if (!task) return res.writeHead(404).end();
      //     res.writeHead(200).end(JSON.stringify(task));
      //   });
      // },
    },
    db: {
      provider: "mysql",
      url: `mysql://${process.env.DB_USERNAME}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:3306/${process.env.DB_NAME}`,
      enableLogging: true,
      idField: { kind: "uuid" },
      useMigrations: true,
    },
    telemetry: false,
    graphql: {
      playground: true,
      apolloConfig: {
        introspection: true,
      },
    },
    storage: {
      my_S3_images: {
        kind: "s3",
        type: "image",
        bucketName: process.env.S3_BUCKET_NAME || "keystone-test",
        region: process.env.S3_REGION || "us-east-1",
        accessKeyId: process.env.S3_ACCESS_KEY_ID || "keystone",
        secretAccessKey: process.env.S3_SECRET_ACCESS_KEY || "keystone",
        signed: { expiry: 5000 },
        forcePathStyle: true,
        //endpoint: do i need this?
      },
      my_S3_sounds: {
        kind: "s3",
        type: "file",
        bucketName: process.env.S3_BUCKET_NAME || "keystone-test",
        region: process.env.S3_REGION || "us-east-1",
        accessKeyId: process.env.S3_ACCESS_KEY_ID || "keystone",
        secretAccessKey: process.env.S3_SECRET_ACCESS_KEY || "keystone",
        signed: { expiry: 5000 },
        forcePathStyle: true,
      },
    },
    lists: Models,
    session,
  }),
);

// *******Do I even need this? If yes, does it go in this file?
// export const context = {
//     Query API
//     query,

//     Database API
//   db,

//     HTTP request object
//     req,
//     res,

//     GraphQL helpers
//   graphql: {
//     schema,
//     run,
//     raw,
//   },

//   New context creators
//   sudo,
//   withRequest,
//   withSession,

//     Raw Prisma access
//     prisma,

//     Images API
// images: {
//   **************research more to find appropriate option
//   getUrl,
//   getDataFromRef,
//   getDataFromStream,
// },
// }

// ***** example for extendHttpServer settings...

// import { WebSocketServer } from 'ws';
// import { useServer as wsUseServer } from 'graphql-ws/lib/use/ws';

// export default config<TypeInfo>({
//   server: {
//     extendHttpServer: (httpServer, commonContext) => {
//       const wss = new WebSocketServer({
//         server: httpServer,
//         path: '/api/graphql',
//       });

//       wsUseServer({ schema: commonContext.graphql.schema }, wss);
//     },
//   },
// });

//***********Images API
//If support for image fields is enabled in the system,
//then an images API will be made available on the context object.
//This API takes advantage of the following types:
// type ImageMode = 'local';

// type ImageExtension = 'jpg' | 'png' | 'webp' | 'gif';

// type ImageData = {
//   mode: ImageMode;
//   id: string;
//   extension: ImageExtension;
//   filesize: number;
//   width: number;
//   height: number;
// };
