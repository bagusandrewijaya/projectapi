'use strict';

const req = require('express/lib/request');
const { get } = require('express/lib/response');
const joi = require('joi');
module.exports = function(app){
   
     var myjson = require('../controller');
     //route homepage
    app.route('/')
        .get(myjson.index);
    //route show data
    app.route('/all')
        .get(myjson.showdatam);
    //route show data by id
    app.route('/all/id=:id')
        .get(myjson.showbyid);
    //route post data
    app.route('/postdata',(req,res)=>{
        const schema = {
            nim: joi.number().integer.required(),
            nama: joi.string().max(30).required(),
            jurusan: joi.string().max(30).required()

        };
        const result = joi.validate(req.body, schema);
        console.log(result);
    })
        .post(myjson.postdata);
    //route put/update data
    app.route('/update')
        .put(myjson.putdata);
    //route delete data by id
    app.route('/delete')
        .delete(myjson.deldata);
    //route nested json
    app.route('/matakuliah')
    .get(myjson.matkulnested);
    //matkul nested show matkul id
    app.get('/matakuliah/nim=:nim')
    .get(myjson.matkulnestedid)
     //route  matkul by id
    app.route('/matakuliah/sks/nim=:nim')
        .get(myjson.matkulnestedbyid);
    app.route('/matakuliah/postmatkul',(req,res)=>{
            const schema = {
                kdmk: joi.string().max(10).required(),
                matakuliah: joi.string().max(15).required(),
                sks: joi.number().integer.required()
            };
                const result = joi.validate(req,body,schema);
                console.log(result);
                    })
        .post(myjson.postdatamatkul);       
};
   