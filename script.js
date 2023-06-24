// Function to increment and display the visitor count
//
function incrementVisitorCount() {
    // Send an HTTP request to the server to increment the count
    fetch('/incrementCount')
      .then(response => response.text())
      .then(count => {
        // Update the visitor count on the page
        const visitorCountElement = document.getElementById('visitorCount');
        visitorCountElement.textContent = `Total Visitors: ${count}`;
      })
      .catch(error => {
        console.error('Error incrementing visitor count:', error);
      });
  }
  
  // Call the incrementVisitorCount function when the page loads
  window.addEventListener('load', incrementVisitorCount);
  
