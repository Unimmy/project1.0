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
                   当前位置: 首页 > 公仔类 > 万代高达 > 万代MG 1/100 独角兽2号机 ${ptitle}
               </div>
               <br>
               </div>
           <div class="row border-bottom border-secondary  pt-2 pb-2">
               <div class="col-6 ">
                   <h5 class="text-muted ">万代MG 1/100 独角兽2号机 ${ptitle}</h5>
               </div>
               <div class="col-6  pt-1 pb-1 inputbg" >
                   <input type="text" name="sousuo"><input type="button">
                </div> 
                </div>
                `
            }
           $("#listtitle").append(html)

         var html="";
           for(var {p_imgurl_big,p_imgurl_small} of res){
               html+=`
             <div class="col-12 p-2 text-center" >
             <div class="row diss"> 
             <div id="fdj"></div>
                 <div id="fdtp">
                   <img src="${p_imgurl_big}">
                 </div>
               <div class="row"> 
                    <div class="col-12 p-0 border border-dark">  
                       <img src="${p_imgurl_big}" width="400" height="400">
                   </div>
                   <div class="col-12">
                       <div class="row p-0 d-flex justify-content-center mt-2">
                           <div class="col-4"><input type="button" class="btn btn-outline-dark  inputs" value="<" ></div>
                           <div class="col-4 p-0"><img src="${p_imgurl_small}" width="30" height="50" class="border border-dark" ></div>
                           <div class="col-4 "><input type="button" class="btn btn-outline-dark  inputs" value=">"></div>
                       </div>
                   </div> 
               </div>
           </div>
           <script>
           $(".diss").on("mouseenter",function(){
                $("#fdj")[0].style.display="block";
               $("#fdtp")[0].style.display="block";
           })
           $(".diss").on("mouseleave",function(){
                $("#fdj")[0].style.display="";
               $("#fdtp")[0].style.display="";
           })
           $(".diss").on("mousemove",function(e){
               var x =e.offsetX-100;
               var y = e.offsetY-100;
               $("#fdj")[0].style.left=x+"px";
               $("#fdj")[0].style.top=y+"px"
               console.log(x,y)
             
           })
       </script>
           `
           }
          $("#listimg2").append(html)   
        }
     
    })
  
})