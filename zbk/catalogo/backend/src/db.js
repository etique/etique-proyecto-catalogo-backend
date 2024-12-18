const mysql = require("mysql2")

const connection = mysql.createConnection({
    host: process.env.MYSQL_HOST, // localhost
    port: process.env.MYSQL_PORT, // 3306
    user: process.env.MYSQL_USER, // root
    password: process.env.MYSQL_PASSWORD, //""
    database: process.env.MYSQL_DATABASE,
})

connection.connect(function (error) {
    if (error) {
        console.log("Error connecting to the database")
    } else {
        console.log("Connected to the database")
    }
})

// -- [nodemon] app crashed - waiting for file changes before starting - v.F.051224:STER:[]
//--[nodemon] starting `node src/index.js`--/home/etique/code/FullStack/backend-node/src/index.js:16
//--})
//  ^

module.exports =  connection // --module.exports = router