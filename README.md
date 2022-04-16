# projectapi
change auth on middleware/auth.js
line 3 from :
var md5 = require('MD5');
to 
var md5 = require('md5');

because i get error when deploy this js
err throw
code : "MODULE_NOT_FOUND",
requirestack :[
              '/app/middleware/auth.js',
              '/app/middleware/index.js',
              'app/server.js/
              ]
  
  
