require("dotenv").config();
const fs = require("fs");
const {
  S3Client,
  //PutObjectCommand,
  //CreateBucketCommand,
  //DeleteObjectCommand,
  //DeleteBucketCommand,
  //paginateListObjectsV2,
  //GetObjectCommand,
} = require("@aws-sdk/client-s3");

const S3_BUCKET_NAME = process.env.S3_BUCKET_NAME;
const S3_REGION = process.env.S3_REGION;
const S3_ACCESS_KEY = process.env.S3_ACCESS_KEY;
const S3_SECRET_ACCESS_KEY = process.env.S3_SECRET_ACCESS_KEY;

const S3 = new S3Client({
  S3_REGION,
  S3_ACCESS_KEY,
  S3_SECRET_ACCESS_KEY,
});

//upload file to s3
export const uploadFile = (image: { path: any }) => {
  const fileStream = fs.createReadStream(image.path);
  //file path coming from multer

  const uploadParams = {
    Bucket: S3_BUCKET_NAME,
    Body: fileStream,
    Key: image.path.name, //this is filename multer would create
  };
  return S3.upload(uploadParams).promise();
};

//function to download file from s3 needs added

// notes from another resource below
//..
//..
//..
//..
//..
//..

//    const {
//     S3Client,
//     PutObjectCommand,
//     //CreateBucketCommand,
//     //DeleteObjectCommand,
//     //DeleteBucketCommand,
//     //paginateListObjectsV2,
//     GetObjectCommand,
//   } = require("@aws-sdk/client-s3");
//   require("dotenv").config();

//   const S3_BUCKET_NAME = process.env.S3_BUCKET_NAME;
//   const S3_REGION = process.env.S3_REGION;
//   const S3_ACCESS_KEY = process.env.S3_ACCESS_KEY;
//   const S3_SECRET_ACCESS_KEY = process.env.S3_SECRET_ACCESS_KEY;

//   export async function createMovie() {
//     // A region and credentials can be declared explicitly. For example
//     // `new S3Client({ region: 'us-east-1', credentials: {...} })` would
//     //initialize the client with those settings. However, the SDK will
//     // use your local configuration and credentials if those properties
//     // are not defined here.
//     const s3Client = new S3Client({
//       region: { S3_REGION },
//       credentials: {
//         secretAccessKey: { S3_SECRET_ACCESS_KEY },
//         accessKeyId: { S3_ACCESS_KEY },
//       },
//     });

//     // Put an object into an Amazon S3 bucket.
//     await s3Client.send(
//       new PutObjectCommand({
//         Bucket: { S3_BUCKET_NAME },
//         Key: "my-first-object.txt",
//         Body: "Hello JavaScript SDK!",
//       })
//     );

//     // Read the object.
//     const { Body } = await s3Client.send(
//       new GetObjectCommand({
//         Bucket: { S3_BUCKET_NAME },
//         Key: "my-first-object.txt",
//       })
//     );

//     console.log(await Body.transformToString());

//     // Confirm resource deletion.
//     //   const prompt = createInterface({
//     //     input: process.stdin,
//     //     output: process.stdout,
//     //   });

//     //   const result = await prompt.question("Empty and delete bucket? (y/n) ");
//     //   prompt.close();

//     //   if (result === "y") {
//     //     // Create an async iterator over lists of objects in a bucket.
//     //     const paginator = paginateListObjectsV2(
//     //       { client: s3Client },
//     //       { Bucket: bucketName }
//     //     );
//     //     for await (const page of paginator) {
//     //       const objects = page.Contents;
//     //       if (objects) {
//     //         // For every object in each page, delete it.
//     //         for (const object of objects) {
//     //           await s3Client.send(
//     //             new DeleteObjectCommand({ Bucket: bucketName, Key: object.Key })
//     //           );
//     //         }
//     //       }
//     //     }
//     //   }
//   }

//   // Call a function if this file was run directly. This allows the file
//   // to be runnable without running on import.
//   import { fileURLToPath } from "url";
//   if (process.argv[1] === fileURLToPath(import.meta.url)) {
//     main();
//   }