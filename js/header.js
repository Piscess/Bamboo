(()=>{
	
		//判断登录:
		ajax({
			type:"get",
			url:"php/routes/users/isLogin.php"
		}).then(data=>{//data:{ok:1,uname:xxx}
			var loginList=document.getElementById("header_right");
		var welcomeList=document.getElementById("login_right");
			if(data.ok==1){
				loginList.style.display="none";
				welcomeList.style.display="block";
				document.getElementById("lgname").innerHTML=data.uname;
				document.getElementById("top_left").innerHTML+=`
					<div class="user_info" style="display: none;">
		            	<p class="user_pic">
		            		<img src="img/user/1.jpg" alt="" />
		            	</p>
		            	<p id="user_uname">
		            		<span>用户名:</span>
		            		${data.uname}
		            	</p>
		            </div>
				`;
				document.getElementById("user_btn").onclick=function(e){
					e.preventDefault();
					if(document.getElementById("top_left").lastElementChild.style.display=="none")
					document.getElementById("top_left").lastElementChild.style.display="block";
					else
					document.getElementById("top_left").lastElementChild.style.display="none";
				};
				document.getElementById("logout").onclick=()=>{
					ajax({
							type:"get",
							url:"php/routes/users/logout.php",
							dataType:"text"
					}).then(()=>{
							location.reload();
					})
				};				
			}else{
				loginList.style.display="block";
				welcomeList.style.display="none";
			}
		});

	$("#search_btn").click(function (e) {
		e.preventDefault();
		var name=$("#search_name").val();
		location.href="products_search.shtml?name="+name;
    })

})();
