(()=>{
	var Reguname=document.getElementById("Reguname");
	var Regupwd=document.getElementById("Regupwd");
//	if(Reguname.value!=""){
//		Reguname.onblur=e=>{
//			checkName(e.target);	
//		};
//		Reguname.onfocus=()=>{
//			document.getElementById("Regerr").innerHTML="";	
//		};
//	}else{
//		Reguname.onblur=()=>{
//			document.getElementById("Regerr").innerHTML="请输入用户名";	
//		};
//		Reguname.onfocus=()=>{
//			document.getElementById("Regerr").innerHTML="";	
//		};
//	}
	Reguname.onfocus=()=>{
		if(Reguname.value==""){
			document.getElementById("Regerr").innerHTML="请输入用户名";	
			Reguname.onblur=e=>{
				document.getElementById("Regerr").innerHTML="";	
				checkName(e.target);
			};
		}
		
	}
	function checkName(txt){
		return new Promise(callback=>{
			ajax({
				type:"post",
				url:"php/routes/users/checkName.php",
				data:"uname="+txt.value.trim(),
				dataType:"text"	
			}).then(text=>{
				if(text=="false")
					document.getElementById("Regerr").innerHTML="用户名已存在";
				else
					callback();
			})
		})
	}
	
	document.getElementById("register_button").onclick=()=>{
		checkName(Reguname)
		.then(()=>{
			ajax({
				type:"post",
				url:"php/routes/users/register.php",
				data:"uname="+Reguname.value.trim()+"&upwd="+Regupwd.value.trim(),
				dataType:"text"
			}).then(()=>{
				location="index.php";
			})
		})
	}
})();
