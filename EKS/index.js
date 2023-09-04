const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');

const app = express();
const PORT = 3000;

// Database connection
const db = mysql.createConnection({
    host: 'backendrds.cy6gove1gtqo.ap-south-1.rds.amazonaws.com',
    user: 'admin',
    password: 'Admin123456',
    database: 'backend'
});

// Connect to MySQL
db.connect((err) => {
    if (err) throw err;
    console.log('Connected to the MySQL database.');
});

// Middleware to parse JSON
app.use(bodyParser.json());

// Fetch all users
app.get('/users', (req, res) => {
    const sql = 'SELECT * FROM users';
    db.query(sql, (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});

// Add a user
app.post('/users', (req, res) => {
    const { name, email } = req.body;
    const sql = 'INSERT INTO users (name, email) VALUES (?, ?)';
    db.query(sql, [name, email], (err, result) => {
        if (err) throw err;
        res.json({ id: result.insertId, name, email });
    });
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
