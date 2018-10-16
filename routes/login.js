const express = require("express")
const router =  express.Router()
const pool = require("../pool")

router.post('/',(req,res)=>{
    var {uname,upwd} = req.body
    if(!uname){ res.send({code:0,msg:"请输入用户名"}) ;return}
    if(!upwd){ res.send({code:0,msg:"请输入密码"}) ;return}
    var sql = "SELECT `uid`, `uname`, `upwd` FROM `pro_user` WHERE uname=? AND upwd=md5(?)"
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw  err;
        console.log(sql)
        if(result.length>0){
             res.send({code:1,msg:result}) 
        }else{
            res.send({code:0,msg:"账号或密码错误"})
        }
       
    })
})


module.exports = router