(()=>{
	var uname=document.getElementById("uname");
	var upwd=document.getElementById("upwd");
	document.getElementById("login_button").onclick=()=>{
		ajax({
			type:"post",
			url:"php/routes/users/login.php",
			data:"uname="+uname.value+"&upwd="+upwd.value,
			dataType:"text"
		}).then(text=>{
			if(text=="false"){
				document.getElementById("err").innerHTML="用户名或密码错误";
				document.getElementById("err").style.backgroundColor="#FFEBEB";
			}else{
				location="index.php";
			}
		})
	};
})();
