const express = require("express")
const router=express.Router()
const pool = require("../pool")
router.get("/product_details",(req,res)=>{
    var pid=req.query.pid
    var sql = "SELECT `id`, `pid`, `p_imgurl`, `ptitle`, `p_imgurl_big`, `p_imgurl_small` FROM `pro_products` WHERE pid=?"
    pool.query(sql,[pid],(err,result)=>{
        if(err) throw err
        res.send(result)
    })    
})

module.exports = router