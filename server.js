const express = require('express');
const bodyParser = require('body-parser');

var morga = require('morgan');
const app = express();
//parse application
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());
app.use(morga('dev'));
//call routes
var routes = require('./routes/routes');
routes(app);
//morgan routes from index
app.use('/auth',require('./middleware'));
//server starting on
app.listen(process.env.PORT || 3000, () => {
    console.log(`Server started on port`);
});

