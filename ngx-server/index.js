// Import the required dependencies
const express = require('express')
const sqlite3 = require('sqlite3').verbose()
const cors = require("cors")

// Create an instance of the server
const app = express()
// Enable all CORS requests
app.use(cors())
// Specify the port
const port = 3000

// Create a route that allows the GET HTTP method
app.get('/dummySales', (req, res) => {
    // The SQL statement for fetching all the dummy sales data from the database
    const fetchSqlStmt = "SELECT * FROM dummySales"

    // Establish a database connection with read-only permission
    const database = new sqlite3.Database('./database/dummySalesData.db', sqlite3.OPEN_READONLY, (err) => {
        if(err){
          console.log(err.message)
        }
        else{
          console.log("Database connection successfully established")
        }
    })

    // Fetch all the dummy sales using the specified SQL statement
    database.all(fetchSqlStmt, (err, rows) => {  
            // Send it back to the client
            res.send(rows)
            // Close the database connection
            database.close()
    })
})

app.listen(port, () => {
  console.log(`Server running: http://localhost:${port}`)
})