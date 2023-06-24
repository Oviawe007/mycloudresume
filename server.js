const express = require('express');
const app = express();
//

// Initialize the visitor count
let visitorCount = 0;

// Route for incrementing the count
app.get('/incrementCount', (req, res) => {
  visitorCount++;
  res.send(visitorCount.toString());
});

// Serve the HTML file
app.use(express.static(__dirname));

// Start the server
const port = 3000;
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
