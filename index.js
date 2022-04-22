const express = require('express');
const app = express();
const listenPort = 3000;

app.get('/', (req, res) => {
  res.send({
    status: 'OK',
    data: 'Server running healthy',
  });
});

app.listen(listenPort, () => {
  console.log(`Service listening on port ${listenPort}`);
});
