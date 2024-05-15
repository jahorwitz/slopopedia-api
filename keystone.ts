import dotenv from "dotenv";
import { config } from "@keystone-6/core";
import { TypeInfo, Context } from ".keystone/types";
dotenv.config();
//import { lists } from './schema';
import * as Models from "./models";
import { withAuth, session } from "./auth";

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
      //extendExpressApp: async (app, commonContext) => { /* ... */ },
      extendHttpServer: async (httpServer, commonContext) => {
        /* ... */
      },
      extendExpressApp: (app, commonContext) => {
        app.get("/api/users", async (req, res) => {
          const context = await commonContext.withRequest(req, res);
          const users = await context.query.User.findMany();
          res.json(users);
        });
      },
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
        //endpoint: 'www.endpointgoeshere.com' //do i need this?
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
