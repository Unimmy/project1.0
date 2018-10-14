const express = require("express")
const router =  express.Router()
const pool = require("../pool")

router.get('/',(req,res)=>{
    var {uname,upwd} = req.query
    console.log(req.query)
    console.log(uname,upwd)
    if(!uname){ res.send("请输入用户名") ;return}
    if(!upwd){ res.send("请输入密码") ;return}
    var sql = "SELECT `uid`, `uname`, `upwd` FROM `pro_user` WHERE uname=? and upwd=md5(?)"
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw  err
        console.log(result)
        if(result.length>0){
             res.send(result)
             console.log(sql)
        }else{
            res.send("账号或密码错误")
        }
       
    })
})


module.exports = router