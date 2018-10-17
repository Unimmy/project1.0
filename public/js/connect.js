$(function(){
    $("#btn").click(function(){
        var uname=$("#s1").val()
        var tel=$("#s2").val()
        var qq=$("#s3").val()
        var uemail=$("#s4").val()
        var liuyan=$("#s5").val()
        $.ajax({
            url:`user_add_dn/down?ume=${uname}&tel=${tel}&qq=${qq}&uemail=${uemail}&liuyan=${liuyan}`,
            type:"get",
            success:function(res){
                if(res.code==200){
                    $("#btn2").removeAttr("disabled")
                }
            }
        })
    })
})