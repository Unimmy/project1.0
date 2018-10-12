const express = require("express")
const router=express.Router()
const pool = require("../pool")
router.get("/product_details",(req,res)=>{
    var id=req.query.pid
    console.log(id)
    res.send(id)
})

module.exports = router