require("dotenv").config();
const {
    S3Client,
    PutObjectCommand,
    //DeleteObjectCommand,
    //GetObjectCommand,
} = require("@aws-sdk/client-s3");
const { HttpRequest } = require("@smithy/protocol-http");
const { formatUrl } = require("@aws-sdk/util-format-url");
const { parseUrl } = require("@smithy/url-parser");
const { S3RequestPresigner } = require("@aws-sdk/s3-request-presigner");
const { Hash } = require("@smithy/hash-node");

const S3_BUCKET_NAME = process.env.S3_BUCKET_NAME;
const S3_REGION = process.env.S3_REGION;
const S3_ACCESS_KEY_ID = process.env.S3_ACCESS_KEY_ID;
const S3_SECRET_ACCESS_KEY = process.env.S3_SECRET_ACCESS_KEY;

/*
this whole set of functions needs more well defined error handling.
i just added this stuff so that the server won't crash.
*/
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
    try {
        const uniqueSuffix = Date.now() + "-" + Math.round(Math.random() * 1e9);
        const fileType = data.movieImage.originalname.split(".").pop();
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

        return { s3Upload, uniqueKey };
    } catch (e) {
        return e;
    }
};

export async function createPresignedUrl({ region, bucket, key }) {
    try {
        const url = parseUrl(`https://${bucket}.s3.${region}.amazonaws.com/${key}`);
        const presigner = new S3RequestPresigner({
            credentials: {
                accessKeyId: S3_ACCESS_KEY_ID,
                secretAccessKey: S3_SECRET_ACCESS_KEY,
            },
            region,
            sha256: Hash.bind(null, "sha256"),
        });

        const signedUrlObject = await presigner.presign(new HttpRequest(url));
        return formatUrl(signedUrlObject);
    } catch (e) {
        return e;
    }
}
export async function getUrl({ key }) {
    try {
        const url = await createPresignedUrl({
            region: S3_REGION,
            bucket: S3_BUCKET_NAME,
            key: key,
        });
        return url;
    } catch (e) {
        return e;
    }
}
