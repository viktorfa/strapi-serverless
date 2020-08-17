// config/plugins.js

module.exports = ({ env }) => ({
  upload: {
    provider: "aws-s3",
    providerOptions: {
      params: {
        Bucket: env("BUCKET_NAME"),
      },
    },
  },
});
