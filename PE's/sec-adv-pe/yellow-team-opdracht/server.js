require("dotenv").config();

const express = require("express");
const path = require("path");
const { auth } = require("express-openid-connect");
const indexController = require("./controllers/indexController");

const PORT = process.env.PORT || 4000;

const app = express();

const config = {
  authRequired: false,
  auth0Logout: true,
  secret: process.env.AUTH0_CLIENT_SECRET,
  clientID: process.env.AUTH0_CLIENT_ID,
  baseURL: process.env.AUTH0_BASE_URL,
  issuerBaseURL: process.env.AUTH0_DOMAIN,
};

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(auth(config));
app.use(express.json());

app.get("/", indexController.Index);
app.get("/callback", indexController.Callback);

app.listen(PORT);
