const Response = require("../models/Response");

const Index = (req, res) => {
  const authenticated = req.oidc.isAuthenticated();

  return res.render(
    "index",
    new Response(
      authenticated,
      req.oidc.user?.email,
      "Maarten lust geen spruitjes"
    )
  );
};

const Callback = (req, res) => res.redirect("/");

module.exports = {
  Index,
  Callback,
};
