// app.js
const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('Hello from my simple web app version 2! Made by Taneeshq');
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
