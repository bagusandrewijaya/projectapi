var mysql = require('mysql');

//create connection
const conn = mysql.createConnection({
    host:'localhost',
     user:'root',
     password:'',
     database:'dbrestapi'
});

conn.connect((err)=>{
    if(err) throw err;
    console.log('mysql konek');
});

module.exports = conn;