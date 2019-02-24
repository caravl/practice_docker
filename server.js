const express = require('express');
const server = express();
const PORT = 3000;
const pg = require('pg');
pg.connect('postgres://postgres:password@localhost:5432/practicedocker');
server.listen(PORT, () => console.log(`Server running on ${PORT}`));
server.get('/', (req, res) => res.status(200).send('hello'));

// a dockerfile tells docker how to set up your container (environment), you're automating the install/setup/startup process
