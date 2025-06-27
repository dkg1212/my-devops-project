const express = require('express');
const app = express();
const PORT = 3000;

// This is a route handler for the root URL "/"
app.get('/', (req, res) => {
  res.send('Hello, DevOps World! My pipeline is working!');
});

// Start the server and listen on the specified port
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});