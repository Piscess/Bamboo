$(function () {
   var hid=this.location.search.slice(5);
   console.log(hid);
   $.ajax({
       type:"GET",
       url:"php/routes/products/products.php",
       data:{hid:hid},
       success:function (data) {
           var html="";
           html+=`
                <div class="p_top">
                    <div class="product_header" style="background-image:url('${data.main}')">
                        <div class="img_text">
                            <p><span>${data.ptime}</span></p>
                            <p><span>${data.ptitle}</span></p>
                        </div>
                    </div>
                    <div class="desc">
                        <span>${data.psubtitle}</span>
                    </div>
                </div>
                <div class="p_main">
                    <p>制作步骤</p>
                    <ul class="steps">
           `;
           for(var i=0;i<data.steps.length;i++){
               html+=`
                <li>
                    <h4>Step${i+1}</h4>
                    <p>${data.steps[i]}</p>
                    <img src="${data.step_pics[i]}" />
                </li>`;
           }
           html+=`
                </ul>
            </div>`;
           $("#product_main").html(html);
       },
       error:function(){
           alert("网络故障");
       }
   })
});

// <li>
// 	<h4>Step1</h4>
// 	<p>${data.step1}</p>
// 	<img src="${data.step1_pic}" />
// </li>