const express = require('express');
const cors = require('cors');
const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

let players = [];

app.post('/join', (req, res) => {
  const { name } = req.body;
  players.push({ name, time: new Date().toISOString() });
  res.send({ success: true });
});

app.get('/players', (req, res) => {
  res.send(players);
});

app.listen(PORT, () => console.log('Server läuft auf Port', PORT));
