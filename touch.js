const express = require('express');
const app = express();

const port = process.env.port || 3000;

app.get('/', (req, res) => {
    res.send(`
    <h1>WebUnity - Application de Test</h1>
    <p>Migration réussie vers Azure App Service !</p>
    <p>Déployé automatiquement depuis GitHub</p>
    <p>Date: ${new Date().toLocaleString()}</p>
    `);
})

app.listen(port, () => {
    console.log('App running on port 3000');
})