$(function(){
    $.ajax({
        url:"http://127.0.0.1:3000/hall/imgs",
        type:"get",
        success:function(res){
            var html ="";
            for(var {img_url,title,id} of res){
                html+=`
                <div class="col-2">
                   <a href="http://127.0.0.1:3000/details.html?id=${id}"> <img src="${img_url}" alt="" title="${title}"></a>
                </div>
               `
            }
            $("#tu123").append(html)
        }
    })
    $.ajax({
        url:"http://127.0.0.1:3000/hall/products",
        type:"get",
        success:function(res){
            var html ="";
            for(var {p_imgurl,ptitle,pid} of res){
                html+=`
                <div class="col-3 border border-light">
                <a href="http://127.0.0.1:3000/details.html?pid=${pid}"> <img src="${p_imgurl}" alt="${ptitle}">
                <p>${ptitle}</p></a>
            </div>
               `
            }
            $(".images1").append(html)
            
        }
    })
   
    })