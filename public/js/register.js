$(function(){
    $("#uname").on("blur",function(){
    var uname=$("#uname").val()
        $.ajax({
            url:"http://127.0.0.1:3000/register/select",
            data:"uname="+uname,
            type:"post",
            success:function(res){
            $("#yz").html(res.msg)
            }
        })
    })
    $("#upwd").blur(function(){
        var data = $("#upwd").val()
       var reg=/^\w{6,18}$/
       if(reg.test(data)){
           $("#yz1").html("密码可用")
       }else{
         $("#yz1").html("密码不可用,请从新输入")
       }
     })
     $("#upwd1").blur(function(){
        var data1 = $("#upwd").val()
        var data2 = $("#upwd1").val()
        if(data1==null){return}
        else if(data1==data2){
           $("#yz11").html("密码正确")
       }else{
         $("#yz11").html("密码错误,请从新输入")
       }
     })
     $("#email").blur(function(){
        var data = $("#email").val()
         var reg= /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/
        if(reg.test(data)){
           $("#yz2").html("邮箱可用")
       }else{
         $("#yz2").html("邮箱不可用,请从新输入")
       }
     })
     $("#phone").blur(function(){
        var data = $("#phone").val()
         var reg= /^1[34578]\d{9}$/
         console.log(111)
        if(reg.test(data)){
         $("#yz3").html("手机号可用")
         $("#btn").removeAttr("disabled")
       }else{
         $("#yz3").html("手机号不可用,请从新输入")
       }
     })
     $("#btn").click(function(){
         var uname=$("#uname").val();
         var upwd=$("#uname").val();
         var email=$("#uname").val();
         var phone=$("#uname").val();
         var data=`uname=${uname}&upwd=${upwd}&email=${email}&phone=${phone}`
         $.ajax({
             url:"http://127.0.0.1:3000/register/add",
             data:data,
             type:"post",
            success:function(res){
                console.log(res)
                if(res.code==1){
                alert(res.msg);
                sessionStorage.setItem("username",res.data)
               location.href="index.html"
            }else{
                alert(res.msg)
            }
            }
         })
     })
})