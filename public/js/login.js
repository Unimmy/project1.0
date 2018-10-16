$(function(){  
    $("#us_Submit").click(function(){
        var uname=$("#uname").val()
        var upwd=$("#upwd").val();
        $.ajax({
            url:`http://127.0.0.1:3000/login/`,
            type:"post",
            data:`uname=${uname}&upwd=${upwd}`,
            success:function(res){
                //利用storage存储获取的用户名
                if(res.code!=0){
                     sessionStorage.setItem("username",res.msg[0].uname)
                     location.href="http://127.0.0.1:3000/index.html"  
                }else{
                    alert(res.msg)
                }   
            }       
        }) 
    })
})
//侵入式选项卡
jQuery.fn.tabs=function(){
    var parent = this
    parent.children(":first-child").children().children(":first-child").addClass("active")
    parent.children(":last-child").children(":first-child").addClass("active1")
    parent.children(":first-child").on("click","a",function(e){
        e.preventDefault();
        var $tar=$(e.target)
        if(!$tar.parent().parent().is(".active")){
            $tar.parent().parent().addClass("active")
            .siblings().removeClass("active");
            var id=$tar.parent().attr("data-target")
            $(id).addClass("active1").siblings().removeClass("active1")
        }
    })
   } 
  $(".loginbg").tabs()
