const http = require("http");

const server = http.createServer((req, res) => {
  res.end("Hello from OpenFaaS!");
});

server.listen(3000);
