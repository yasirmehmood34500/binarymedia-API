const express = require("express");
const app = express();
require("dotenv").config();
const port = process.env.PORT;
app.use(express.json());
require("./db");

const router= require("./routers");

app.use('', router);

app.listen(port, () => {
  console.log("Your Project Running Port is : " + port);
});
