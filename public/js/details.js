$(function(){
    $.ajax({
        url:"http://127.0.0.1:3000/details/product_details?pid=1",
        type:"get",
        success:function(res){
            console.log(111)
        }

    })
})