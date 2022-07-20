// import my sql to library
const mySql = require('mysql2');

// connect to our database
const db = mySql.createConnection({
    host: '34.170.135.140',
    user: 'root',
    password: 'BuildingSoFLo',
    database: 'swecc-summer-2022',
});

// run a simple query
db.query('SELECT * FROM Books_mtm', (err, results) => {
    if (err) {
        console.log(err)
    }
    console.log(results)
    db.end()
})

// output the results