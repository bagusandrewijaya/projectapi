'use strict';

var response = require('./res');
var connection = require('./koneksi');

exports.index = function(req,res){
    response.ok("connection ok!",res)
};

//show data from mysqli
exports.showdatam = function(req,res){
    connection.query('select * from tb_mahasiswa',function(error,rows,fields){
        if (error) {
            connection.log(error);
        }else{
            response.ok(rows,res)
        }
    });
};