$(function () {
    var searchname=decodeURI(this.location.search.slice(6));
    console.log(decodeURI(this.location.search.slice(6)));
    $.ajax({
        type:"GET",
        url:"php/routes/products/product_search.php",
        data:{name: searchname},
        success:function (data) {
            var html="";
            for(var i=0;i<data.length;i++) {
                var p = data[i];
                html += `
                    <li>
                        <a href="products.shtml?hid=${p.pid}">
                            <img src="${p.main_pic}"/>
                            <p>${p.ptitle}</p>
                            <p>${p.ptime}</p>
                        </a>
                    </li>
               `;
            }
            $(".search_result").html(html);
        },
        error:function(){
            alert("网络故障");
        }
    })
});