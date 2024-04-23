// Import Express module
const express = require('express');

// Create an Express application
const app = express();

// Define a route
app.get('/', (req, res) => {
    res.send('Hello, World!');
});

app.get('/vuvandinh', (req, res) => {
    res.send('Hello, vu van dinh!');
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
