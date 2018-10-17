const express = require("express")
const router=express.Router()
const pool = require("../pool")

router.get('/down',(req,res)=>{
   var {user,tel,qq,uemai,liuyan} =req.query;
    var sql = 'INSERT INTO `pro_user_download_res`(`id`, `user`, `tel`, `qq`, `uemail`, `liuyan`) VALUES (null,?,?,?,?,?)'
    pool.query(sql,[user,tel,qq,uemai,liuyan],(err,result)=>{
        if(err) throw err
        console.log(result)
        if(result.affectedRows>0){
        res.send({code:200,msg:""})
    }
    })
})

module.exports =router