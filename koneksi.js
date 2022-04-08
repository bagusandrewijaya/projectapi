var mysql = require('mysql');

//create connection
const conn = mysql.createConnection({
    host:'www.db4free.net',
     user:'andreskak',
     password:'polibek22',
     database:'restapia'
});

conn.connect((err)=>{
    if(err) throw err;
    console.log('mysql konek');
});

module.exports = conn;