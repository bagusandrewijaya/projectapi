var mysql = require('mysql');

//create connection DATABASE
const conn = mysql.createConnection({
    host:'www.db4free.net',
     user:'andreskak',
     password:'polibek22',
     database:'restapia'
});
//IF SUCCESFUL U CAN SEE THIS MESSAGE FROM FROM CONSOLE
conn.connect((err)=>{
    if(err) throw err;
    console.log('mysql connection OK!');
});

module.exports = conn;