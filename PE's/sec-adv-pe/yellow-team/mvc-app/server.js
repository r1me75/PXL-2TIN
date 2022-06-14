require("dotenv").config();

const express = require("express");
const path = require("path");
const { auth, requiresAuth } = require("express-openid-connect");
const homeController = require("./controllers/home.controller");

const PORT = 80;

const app = express();

const config = {
  authRequired: false,
  auth0Logout: true,
  secret: process.env.AUTH0_CLIENT_SECRET,
  clientID: process.env.AUTH0_CLIENT_ID,
  baseURL: process.env.AUTH0_BASE_URL,
  issuerBaseURL: process.env.AUTH0_ISSUER_BASE_URL,
};

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(auth(config));
app.use(express.json());

app.get("/", homeController.Index);
app.get("/callback", homeController.Callback);

app.listen(PORT);
