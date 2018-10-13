const express = require("express")
const router=express.Router()
const pool = require("../pool")

router.get('/imgs',(req,res)=>{
    var sql = 'SELECT `id`, `img_url`,  `img_url1`,`title` FROM `pro_imgs` '
    pool.query(sql,(err,result)=>{
        if(err) throw err
        res.send(result)
    })
})

router.get('/products',(req,res)=>{
    var sql ='SELECT `pid`, `p_imgurl`, `ptitle` FROM `pro_products`'
    pool.query(sql,(err,result)=>{
        if(err) throw err
        res.send(result)
    })
})
module.exports =router