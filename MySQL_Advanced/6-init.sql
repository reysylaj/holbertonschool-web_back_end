const mysql = require('mysql');

// Database connection configuration
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'yourpassword', // Update with your password
    database: 'yourdatabase'  // Update with your database name
});

// Connect to the database
connection.connect(err => {
    if (err) {
        console.error('Connection failed: ' + err.stack);
        return;
    }
    console.log('Connected to the database');
});

// Parameters for calling the procedure
const user_id = 1; // Example user ID
const project_name = 'Python is cool'; // Example project name
const bonus = 100; // Example bonus

const query = 'CALL AddBonusTest(?, ?, ?)';
connection.query(query, [user_id, project_name, bonus], (err, results) => {
    if (err) {
        console.error('Error executing the procedure: ' + err.message);
        return;
    }
    console.log(`Bonus of ${bonus} added for user ${user_id} in project ${project_name}`);
});

// Close the connection
connection.end();