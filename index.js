const { Redis } = require ("@upstash/redis");
const express = require("express");

const app = express();
const redis = Redis.fromEnv();

app.get('/', async (req, res) => {
    const value = await redis.get('counter');
    await redis.set('counter', parseInt(value || 0) + 1);
    res.send(`Counter: ${value || 0}`);
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
