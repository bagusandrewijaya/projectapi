var connection = require('../koneksi');
var mysql = require('mysql');
var md5 = require('MD5');
var response = require('../res');
var jwt = require('jsonwebtoken');
var config = require('../config/secret');
var ip = require('ip');
const req = require('express/lib/request');
const Connection = require('mysql/lib/Connection');

//controller register
exports.register = function(req,res){
    var post = {
        username: req.body.username,
        email: req.body.email,
        password: md5(req.body.password),
        role: req.body.role,
        date_sign: new Date()
    }
    var query = "SELECT email from ?? where??=?";
    var table = ["user","email",post.email];

    query = mysql.format(query,table);

    connection.query(query,function(error,rows){
        if(error){
            console.log(Error);
        }else{
            if(rows.length == 0){
                var query = "insert into ?? set ?";
                var table = ["user"];
                query = mysql.format(query,table);
                connection.query(query,post,function(error,rows){
                    if(error){
                        console.log(error)
                    }else{
                        response.ok("user baru berhasil di daftarkan!",res);
                    }
                });
            }else{
                response.ok("email terdaftar!",res);
            }
        }
    })
}

//controler register
exports.login = function(req,res){
    var post = {
        email: req.body.email,
        password: req.body.password
        
    }

    var query = "SELECT * FROM ?? WHERE ??=? AND ??=?";
    var table = ["user","email", post.email,"password",md5(post.password)];

    query = mysql.format(query,table);
    connection.query(query, function(error,rows){
        if (error) {
            console.log(error);
        }else{
            if (rows.length == 1) {
                var token = jwt.sign({rows}, config.secret, {
                    expiresIn: 1440
                });
                uid = rows[0].uid;

                var data = {
                    uid: uid,
                    acces_token: token,
                    ip_address: ip.address()
                }
                var query = "INSERT INTO ?? SET ?";
                var table = ["access_token"];

                query = mysql.format(query,table);
                connection.query(query,data, function(error,rows){
                    if (error) {
                        console.log(error)
                    }else{
                        res.json({
                            success: true,
                            message: "GENERATED TOKEN",
                            token: token,
                            currUser: data.id_user

                        });
                    }
                });

            }else{
                res.json({"Error":true,"message:":"email password tidak valid"});
            }
        }
    })
}