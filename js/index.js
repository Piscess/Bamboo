(()=>{
	ajax({
		type:"get",
		url:"php/routes/products/index_product.php"
	}).then(products=>{
		var html="";
		//遍历recommended数组中的每个商品
		for(var i=0;i<products.breakfast.length;i++){
			var p=products.breakfast[i];
			html+=`
				<li>
					<a href="products.shtml?hid=${p.hid}">
						<img src="${p.hpic}"/>
						<span>${p.hname}</span>
						<span>${p.hintro}</span>
					</a>
				</li>
			`;
			//console.log(p.hid);
		}
        //console.log(html);
       // console.log(document.querySelector("#f1 .main_box"));
		document.querySelector("#f1 .main_box").innerHTML=html;
		html="";
		//遍历recommended数组中的每个商品
		for(var i=0;i<products.lunch.length;i++){
			var p=products.lunch[i];
			html+=`
				<li>
					<a href="products.shtml?hid=${p.hid}">
						<img src="${p.hpic}"/>
						<span>${p.hname}</span>
						<span>${p.hintro}</span>
					</a>
				</li>
			`;
		}
		document.querySelector("#f2>.main_box").innerHTML=html;
		html="";
		//遍历recommended数组中的每个商品
		for(var i=0;i<products.dinner.length;i++){
			var p=products.dinner[i];
			html+=`
				<li>
					<a href="products.shtml?hid=${p.hid}">
						<img src="${p.hpic}"/>
						<span>${p.hname}</span>
						<span>${p.hintro}</span>
					</a>
				</li>
			`;
		}
		document.querySelector("#f3>.main_box").innerHTML=html;
	});

	// 返回顶部按钮
	var x=10;
    $(window).scroll(function() {
        if (scrollY<300) {
            $("#totop").hide();
            $("#totop").css("bottom","10%");
            x=10;
        }
        if (scrollY>300) {
            $("#totop").show();
            $("#totop").css("bottom","10%");
        }
        console.log(scrollY);
        if (scrollY>800) {
            $("#totop").css("bottom",x+"%");
            x++;
		}
		if(x>=20){
            $("#totop").css("bottom","30%");
		}
    });
})();
