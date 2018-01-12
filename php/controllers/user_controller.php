<?php
//注册,用户名查重,登陆,注销,在线状态 函数
require_once("../../init.php");
function register(){
	global $conn;
	//从REQUEST中获得uname和upwd
	@$uname=$_REQUEST["uname"];
	@$upwd=$_REQUEST["upwd"];
	if($uname&&$upwd){
	//定义SQL语句insert into...
		$sql="insert into bamboo_user(uid,uname,upwd) values(null,'$uname','$upwd')";
	//执行SQL语句获得执行结果
		$result=mysqli_query($conn,$sql);
		return $result;
	}
}
function checkName(){
	global $conn;
//从REQUEST中获得uname
	@$uname=$_REQUEST["uname"];
	if($uname){
//定义sql语句select * from
		$sql="select * from bamboo_user where uname='$uname'";
//执行sql语句
		$result=mysqli_query($conn,$sql);
//获得查询结果
		$row=mysqli_fetch_all($result,1);
//如果结果中有数据
		if(count($row)!=0)
//不能使用
			return false;
//否则
		else
//可以使用
			return true;
	}
}
function login(){
	global $conn;
//从REQUEST中获得uname和upwd
	@$uname=$_REQUEST["uname"];
	@$upwd=$_REQUEST["upwd"];
	if($uname&&$upwd){
//定义sql语句select * from
		$sql="select * from bamboo_user where uname='$uname' and binary upwd='$upwd'";
//执行sql
		$result=mysqli_query($conn,$sql);
//获得查询结果
		$row=mysqli_fetch_all($result,1);
//如果结果中有数据
		if(count($row)!=0){
//登陆成功 打开session 获得uid
			session_start();
			$_SESSION["uid"]=$row[0]["uid"];
			return true;}
//否则
		else
//登陆失败
			return false;
	}
}
//var_dump(login());
function logout(){
	session_start();
	$_SESSION["uid"]=null;
}
function isLogin(){
	global $conn;
	session_start();
	@$uid=$_SESSION["uid"];
	if($uid){
		$sql="select uname from bamboo_user where uid='$uid'";
		$result=mysqli_query($conn,$sql);
		$row=mysqli_fetch_all($result,1);
		return ["ok"=>1,"uname"=>$row[0]["uname"]];
	}else	return ["ok"=>0];
}
?>