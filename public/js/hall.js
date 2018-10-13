$(function(){
    $.ajax({
        url:"http://127.0.0.1:3000/hall/imgs",
        type:"get",
        success:function(res){
            var html ="";
          
            for(var {img_url,title,id,img_url1} of res){
                html+=`
                <div class="col-2">
                   <a href="http://127.0.0.1:3000/details.html?id=${id}"> <img src="${img_url}" alt="" title="${title}"></a>
                </div>
               <script>
               var parent = $("#tu123 div a img")["${id-1}"]
               parent.onmouseenter=function(e){
                    var tar=e.target
                  tar.setAttribute("src","${img_url1}")
               }
               parent.onmouseleave=function(e){
                var tar=e.target
              tar.setAttribute("src","${img_url}")
           }
                </script>
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
            var script=""
               script=` 
                <script>
                $(".images1 div a img").on("mouseenter",function(){
                  this.style.opacity=1
                   $(".images1 div a img").addClass("opca")  
                })
                $(".images1 div a img").on("mouseleave",function(){
                   this.setAttribute("style","")
                    $(".images1 div a img").removeClass("opca")  
                 })
                </script>
                   `
            $("body").append(script)
            
        }
    })
    })