$(function(){
    $(`<link rel="stylesheet" href="css/header.css">`).appendTo("head");
    $('<link rel="shortcut icon" href="../images/favicon.ico">').appendTo("head");
    $.ajax({
        url:"header.html",
        type:"get",
        //dataType:"jsonp",
        success:function(res){
            $(res).replaceAll("#header");
            }
        })
      
})