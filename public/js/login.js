$(function(){  
     var search=window.location.search.slice(1);
     var searchArr=search.split("&")
     var name=searchArr[0].split("=")[1]
     var pwd=searchArr[1].split("=")[1]
    $.ajax({
        url:`http://127.0.0.1:3000/login/?uname=${name}&upwd=${pwd}`,
        type:"get",
        success:function(res){
            console.log(res)
        }
    })        

console.log(searchArr)
})