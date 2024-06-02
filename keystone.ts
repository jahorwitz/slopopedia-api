import dotenv from "dotenv";
import { config } from "@keystone-6/core";
import { TypeInfo, Context } from ".keystone/types";
import { uploadFile } from "./s3";
dotenv.config();
import * as Models from "./models";
import { withAuth, session } from "./auth";
//const S3_BUCKET_NAME = process.env.S3_BUCKET_NAME;
const multer = require("multer");
const storage = multer.memoryStorage();
const upload = multer({ storage: storage });

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

      //custom endpoint used to upload movie images to S3 bucket
      extendExpressApp: (app, commonContext) => {
        app.post(
          "/api/movie",
          upload.single("movieImage"),
          async (req, res) => {
            const userId = req.body.userId;
            //confirm userId exists in database
            //probably need to use withAuth for this?

            const fileData = {
              movieTitle: req.body.movieTitle,
              movieImage: req.file,
            };

            const s3upload = await uploadFile(fileData);

            res.json(s3upload);
          },
        );
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
