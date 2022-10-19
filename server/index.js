const path = require('path');
const express = require("express");
const app = express(); // create express app

app.use(express.static(path.resolve(__dirname, '../client/build')));

app.get('*', (req, res) => {
  res.sendFile(path.resolve(__dirname, '../client/build', 'index.html'));
});

app.listen(3000, () => {
  console.log("server started on port 3000");
});