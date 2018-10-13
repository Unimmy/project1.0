const express = require("express")
const router =  express.Router()
const pool = require("../pool")

router.post('/',(req,res)=>{
    var {uname,upwd} = req.body
    if(!uname){ res.send("请输入用户名") ;return}
    if(!upwd){ res.send("请输入密码") ;return}
    var sql = "SELECT `uid`, `uname`, `upwd` FROM `pro_user` WHERE uname=md5(?) and upwd=md5(?)"
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw  err
        console.log(sql)
        if(result.length>0){
             res.send(result)
        }else{
            res.send()
        }
       
    })
})


module.exports = router