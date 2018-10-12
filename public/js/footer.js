$(function(){
    $(`<link rel="stylesheet" href="css/footer.css">`).appendTo("head")
    $.ajax({
        url:"footer.html",
        type:"get",
        //dataType:"jsonp",
        success:function(res){
            $(res).replaceAll("#footer")
        }
    })
})