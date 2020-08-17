// config/database.js

const getDatabaseConfig = ({ env }) => {
  if (
    env("IS_OFFLINE", null) === "true" ||
    env("LAMBDA_RUNTIME_DIR", null) === null
  ) {
    // In local simulated Lambda or normal Strapi
    return {
      connector: "mongoose",
      settings: {
        uri: env("MONGODB_URI"),
      },
      options: {
        ssl: true,
      },
    };
  } else {
    // In Lambda on AWS
    return {
      connector: "mongoose",
      settings: {
        uri: env("MONGODB_URI"),
      },
      options: {
        ssl: true,
      },
    };
  }
};

module.exports = ({ env }) => ({
  defaultConnection: "default",
  connections: {
    default: getDatabaseConfig({ env }),
  },
});
