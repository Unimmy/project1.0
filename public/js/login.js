$(function(){
    $.ajax({
        url:"http://127.0.0.1:3000/login/",
        type:"post",
        success:function(res){
            console.log(res)
        }
    })        


})