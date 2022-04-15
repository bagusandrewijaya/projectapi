'use strict';

var response = require('./res');
var connection = require('./koneksi');
const req = require('express/lib/request');

exports.index = function(req,res){
    response.ok("connection ok!",res)
}
//show data from mysqli 
exports.showdatam = function(req,res){
    connection.query('select * from tb_mahasiswa',function(error,rows,fileds){
        if (error) {
            connection.log(error);
        }else{
            response.ok(rows,res)
        }
    });
};
//show data by id
exports.showbyid = function(req,res){
    let id = req.params.id;
    connection.query('select * from tb_mahasiswa where id_mahasiswa = ?',[id],function(error,rows,fields){
        if (error) {
            connection.log(error);
        }else{
            response.ok(rows,res)
        }
    });
};
//SHOW BY NAME
exports.showbyname = function(req,res){
    let name = req.params.name;
    connection.query('select * from tb_mahasiswa where nama = ?',[name],function(error,rows,fields){
        if (error) {
            connection.log(error);
        }else{
            response.ok(rows,res)
        }
    });
};
//POST DATA
exports.postdata = function(req,res){
        var nim = req.body.nim;
        var nama = req.body.nama;
        var jurusan = req.body.jurusan;
         connection.query('insert into tb_mahasiswa(nim,nama,jurusan)values(?,?,?)',
         [nim,nama,jurusan],
         function(error,rows,fields){
            if(error) {
                console.log(error);
            res.status(400).send(error);
            return;
            }else{
                response.ok('data berhasil data ditambah!',res)
            }
        });
}
//PUT DATA 
exports.putdata = function(req,res){
    var id = req.body.id_mahasiswa;
    var nim = req.body.nim;
    var nama = req.body.nama;
    var jurusan = req.body.jurusan;
    connection.query('UPDATE tb_mahasiswa SET nim=?,nama=?,jurusan=? WHERE id_mahasiswa=?', [nim,nama,jurusan,id],
    function(error,rows,fields){
        if(error) {
            console.log(error);
        }else{
            response.ok('DATA berhasil di update!',res)
        }
    });
}
//DELETE DATA BY ID
exports.deldata = function(Req,res){
    var id = Req.body.id_mahasiswa;
    connection.query('DELETE FROM tb_mahasiswa WHERE id_mahasiswa=?',[id],
    function(error,rows,fields){
        if(error) {
            console.log(error);
        }else{
            response.ok('DATA berhasil di hapus!',res)
        }
    });
}
//show matakuliah nested
exports.matkulnested = function(req,res){
    connection.query('select tb_mahasiswa.id_mahasiswa,tb_mahasiswa.nim,tb_mahasiswa.nama,tb_mahasiswa.jurusan,matakuliah.matakuliah from krs join matakuliah join tb_mahasiswa where krs.kd_mk = matakuliah.kd_mk and krs.nim = tb_mahasiswa.nim order by tb_mahasiswa.id_mahasiswa',
    function(error,rows,fields){
        if (error) {
            console.log(error);
        }else{
            response.oknested(rows, res);
        
        }
    });
}
//matakuliah nested by id
exports.matkulnestedbyid = function(req,res){
   let nim = req.params.nim;
    connection.query('select tb_mahasiswa.id_mahasiswa,tb_mahasiswa.nim,tb_mahasiswa.nama,tb_mahasiswa.jurusan,matakuliah.matakuliah, sum(matakuliah.sks) as total_Sks from krs join matakuliah join tb_mahasiswa on krs.id_krs = matakuliah.id_mk and krs.id_krs = tb_mahasiswa.id_mahasiswa where tb_mahasiswa.nim= ?',[nim],
    function(error,rows,fields){
        if (error) {
            console.log(error);
        }else{
            response.oknested(rows, res);
        
        }
    });
}
//post matakuliah 
exports.postmatkul = function(Req,res){
    var kd_mk = req.body.kd_mk;
    var matakuliah = req.body.matakuliah;
    var sks = req.body.matakuliah;
    connection.query('insert into matakuliah(kd_mk, matakuliah, sks) values(?,?,?)',[kd_mk,matakuliah,sks],
    function(error,rows,fields){
        if(error) {
            console.log(error);
        res.status(400).send(error);
        return;
        }else{
            response.ok('data matakuliah berhasil data ditambah!',res)
        }
    })
}