$(function(){  
   
    $.ajax({
        url:`http://127.0.0.1:3000/login/?uname=jane&upwd=123456`,
        type:"get",
        success:function(res){
            //利用sessionstorage存储获取的用户名
             sessionStorage.setItem("username",res[0].uname)
            $("#us_Submit").click(function(){
               location.href="http://127.0.0.1:3000/index.html"
            })     
        }       
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
