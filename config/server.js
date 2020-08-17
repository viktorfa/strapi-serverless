// config/server.js

// This config is used both in `strapi build` and `strapi start`.
// So if we have a path prefix to the api, such as /dev or /v1,
// we need to use env variables to configure, as Strapi doesn't
// support path prefixes automagically.

module.exports = ({ env }) => {
  let url = "https://372ddeesf6.execute-api.us-east-1.amazonaws.com/dev";

  // Check if running in serverless-offline
  if (env("IS_OFFLINE", null) === "true") {
    url = "http://localhost:3000/dev";
  }

  return {
    host: env("HOST", "0.0.0.0"),
    port: env.int("PORT", 1337),
    url,
    admin: {
      serveAdminPanel: false, // No admin panel
      autoOpen: false,
      url: "/",
      auth: {
        secret: env(
          "ADMIN_JWT_SECRET",
          "Insert random string as env variable in production"
        ),
      },
    },
  };
};
