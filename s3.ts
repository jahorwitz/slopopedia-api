require("dotenv").config();
const {
  S3Client,
  PutObjectCommand,
  //DeleteObjectCommand,
  //GetObjectCommand,
} = require("@aws-sdk/client-s3");

const S3_BUCKET_NAME = process.env.S3_BUCKET_NAME;
const S3_REGION = process.env.S3_REGION;
const S3_ACCESS_KEY_ID = process.env.S3_ACCESS_KEY_ID;
const S3_SECRET_ACCESS_KEY = process.env.S3_SECRET_ACCESS_KEY;

//instantiating S3Client
const s3 = new S3Client({
  region: S3_REGION,
  credentials: {
    accessKeyId: S3_ACCESS_KEY_ID,
    secretAccessKey: S3_SECRET_ACCESS_KEY,
  },
});

//upload file to s3
export const uploadFile = async (data: {
  movieTitle: string;
  movieImage: {
    buffer: string;
    originalname: string;
  };
}) => {
  //quick and dirty fix to pass correct image format to ContentType
  const fileType = data.movieImage.originalname.slice(-4);
  const uniqueSuffix = Date.now() + "-" + Math.round(Math.random() * 1e9);
  const uniqueKey = data.movieTitle + "-" + uniqueSuffix + fileType;

  // Put an object into an Amazon S3 bucket.
  const s3Upload = await s3.send(
    new PutObjectCommand({
      Bucket: S3_BUCKET_NAME,
      Key: uniqueKey,
      Body: data.movieImage.buffer,
      ContentType: fileType,
    }),
  );

  return s3Upload;
};
