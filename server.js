const express = require('express');
const bodyParser = require('body-parser');
const app = express();

//parse application
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());
//call routes
var routes = require('./routes');
routes(app);

app.listen(process.env.PORT || 3000, () => {
    console.log(`Server started on port`);
});

