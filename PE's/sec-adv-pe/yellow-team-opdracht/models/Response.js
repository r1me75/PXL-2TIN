class Response {
  constructor(isAuthenticated, email, message) {
    this.isAuthenticated = isAuthenticated;
    this.email = email;
    this.message = message;
  }
}

module.exports = Response;
