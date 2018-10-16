const express = require("express")
const router =  express.Router()
const pool = require("../pool")

router.post('/select',(req,res)=>{
    var uname= req.body.uname
    console.log(uname)
    if(!uname){ res.send({code:0,msg:"请输入用户名"}) ;return}
    var sql = "select * from pro_user where uname=?"
    pool.query(sql,[uname],(err,result)=>{
        if(err) throw  err  
        console.log(result)
        if(result.length>0){
            console.log(result)
             res.send({code:0,msg:"用户名已存在"})   
        }else{
            res.send({code:1,msg:"用户名可用"})
        }  
    })
})

router.post('/add',(req,res)=>{
    var {uname,upwd,email,phone} = req.body
    console.log(req.body)
    if(!uname){ res.send({code:0,msg:"请输入用户名"}) ;return}
    if(!upwd){ res.send({code:0,msg:"请输入密码"}) ;return}
    if(!email){ res.send({code:0,msg:"请输入邮箱"}) ;return}
    if(!phone){ res.send({code:0,msg:"请输入手机号码"}) ;return}
    var sql ="select * from pro_user where uname=?"
    pool.query(sql,[uname],(err,result)=>{
        if(err) throw  err 
        if(result.length>0){
           res.send( {code:0,msg:"注册失败"})
        }else{
            sql = "INSERT INTO `pro_user`(`uid`, `uname`, `upwd`, `email`, `phone`, `user_img`) VALUES (null,?,md5(?),?,?,null)"
            pool.query(sql,[uname,upwd,email,phone],(err,result)=>{
                if(err) throw  err 
                if(result.affectedRows>0){
                    res.send({code:1,msg:"注册成功",data:uname})
                }else{
                    res.send({code:0,msg:"注册失败"})
                    }  
                })
        }
   })
})

module.exports = router