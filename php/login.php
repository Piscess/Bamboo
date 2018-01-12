<?php
@$uname=$_REQUEST["uname"];
if($uname===null||$uname===""){
	die("请输入用户名");
}
@$upwd=$_REQUEST["upwd"];
if($uname===null||$uname===""){
	die("请输入密码");
}
require('init.php');
$sql="SELECT * FROM bamboo_user where uname='$uname' AND upwd='$upwd'";
$result=mysqli_query($conn,$sql);
if($result===false){
	echo "登陆失败";
}else{
	$row=mysqli_fetch_assoc($result);
	if($row!==null){
		$url="../index.php";
		//echo '<script>location.href:"../index.php";</scirpt>';
		header("refresh:1;url=$url");
	}else{
		echo "用户名或密码错误";
	}
}
?>