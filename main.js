const express=require('express');
const bodyParser=require( 'body-parser');
const hall = require('./routes/hall')
const details = require('./routes/details')
const login = require('./routes/login')
const app = express();
app.listen(3000);
app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static('./public'));

app.use("/hall",hall)
app.use("/details",details)
app.use("/login",login)
