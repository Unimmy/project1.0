$(function(){
    var pid = window.location.search.split("?")[1];
    $.ajax({
        url:"http://127.0.0.1:3000/details/product_details?"+pid,
        type:"get",
        success:function(res){ 
            var html="";
            for(var {p_imgurl_big,p_imgurl_small,ptitle} of res){
                html+=`
                <div class="row border border-secondary" >
                <div class="col-12 ">
                   当前位置: 首页 > 公仔类 > ${ptitle}
               </div>
               <br>
               </div>
           <div class="row border-bottom border-secondary  pt-2 pb-2">
               <div class="col-6 ">
                   <h5 class="text-muted "> ${ptitle}</h5>
               </div>
               <div class="col-6  pt-1 pb-1 inputbg" >
                   <input type="text" name="sousuo"><input type="button">
                </div> 
                </div>
                `
            }
           $("#listtitle").append(html)

         var html="";
           for(var {p_imgurl_big,p_imgurl_small,p_imgurl} of res){
               html+=`
            <div class="col-12 p-2 text-center" >
            <div class="row diss"> 
            <div class="xs">
                <div class="col-12 p-0"></div>  
                <div id="fdj"></div>
            </div>
            <div id="fdtp">
                <img src="${p_imgurl_big}" width="800" height="800">
            </div>
                <div class="col-12">
                <div class="row p-0 d-flex justify-content-center mt-2">
                    <div class="col-4"><input type="button" class="btn btn-outline-dark  inputs" value="<" ></div>
                    <div class="col-4 p-0"><img src="${p_imgurl_small}" width="30" height="50" class="border border-dark" ></div>
                    <div class="col-4 "><input type="button" class="btn btn-outline-dark  inputs" value=">"></div>
                </div>
            </div> 
            </div>
            <script>
            $(".xs>div:first-child").css("background-image","url(${p_imgurl})");
            $(".xs").hover(function(){
                $("#fdj").css("display","block")
                $("#fdtp").css("display","block")
            }).mousemove(function(e){
                var left= e.offsetX-100;
                var top= e.offsetY-100;
                if(left<0) top=0 ; else if(left>300) left=300;
                if(top<0) left=0; else if(top>300) top=300;
                $("#fdtp>img").css("left",-2*left+"px");
                $("#fdtp>img").css("top",-2*top+"px");
                $("#fdj").css({left,top})
                console.log(e.offsetX,e.offsetY)
            })
            
            $(".xs").on("mouseleave",function(){
                $("#fdj")[0].style.display="";
                $("#fdtp")[0].style.display="";
            })
        </script>
           `
           }
          $("#listimg2").append(html)   
        }
     
    })
  
})