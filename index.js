const express = require('express');
const app = express();
const PORT = process.env.PORT || 4000;

app.set('port', PORT);

app.get('/', (request, response) => {
  response.send('Another service, yay!');
});

app.listen(app.get('port'), () => {
  console.log(`Node app is running at localhost: ${app.get('port')}`);
});
