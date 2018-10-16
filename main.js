const express=require('express');
const bodyParser=require( 'body-parser');
//挂载端口
const hall = require('./routes/hall')
const details = require('./routes/details')
const login = require('./routes/login')
const register=require('./routes/regeister')
const app = express();
app.listen(3000);
app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static('./public'));
//拦截
app.use("/hall",hall)
app.use("/details",details)
app.use("/login",login)
app.use("/register",register)