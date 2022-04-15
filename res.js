'use strict';
//
exports.ok = function(values, res){
    var data ={
        'status':200,
        'dummy_Api':"create by bagus andre wijaya",
        'values':values
    
    };
     res.json(data);
     res.end(); 
};
//grouping mata kuliah
exports.oknested = function(values,res){
//reduce data
const hasil = values.reduce((akumulasi, item)=>{
    //identification item by
if (akumulasi[item.nama]) {
    const group = akumulasi[item.nama];
    if (Array.isArray(group.matakuliah)) {
        //push data
        group.matakuliah.push(item.matakuliah);
    }else{
        group.matakuliah = [group.matakuliah, item.matakuliah];
    }
}else{
    akumulasi[item.nama] = item;
}
return akumulasi;
}, {});
var data = {
    'status':200,
    'values':hasil
};
res.json(data);
res.end();
}

