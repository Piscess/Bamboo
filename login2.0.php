<?php
$name=$_REQUEST["name"];
if($name=="log"){
	$lgform="style='display:block'";
	$rgform="style='display:none'";
}else if($name=="reg"){
	$lgform="style='display:none'";
	$rgform="style='display:block'";
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="css/text.css"/>
		<link rel="stylesheet" type="text/css" href="css/login2.0.css"/>
	</head>
	<body>
		<div id="login_main">
			<table></table>
			<form id="login_form" class="lrform" <?php echo $lgform; ?>>
				<p>
					<a href="index.php">BamBoo</a>
				</p>
				<p>
					竹子食谱
				</p>
				<p id="err"></p>
				<p>
					<input type="text" name="uname" id="uname" value="" placeholder="请输入用户名"/>
				</p>
				<p>
					<input type="password" name="upwd" id="upwd" value="" placeholder="请输入密码"/>
				</p>
				<p>
					<span>忘记密码?</span>
				</p>
				<p>
					<input type="button" value="登陆" id="login_button"/>
					<a href="#">立即注册</a>
				</p>
			</form>
			<form id="register_form" class="lrform" <?php echo $rgform; ?>>
				<p>
					<a href="index.php">BamBoo</a>
				</p>
				<p>
					竹子食谱
				</p>
				<p id="Regerr"></p>
				<p>
					<input type="text" name="uname" id="Reguname" value="" placeholder="请输入用户名"/>
				</p>
				<p>
					<input type="password" name="upwd" id="Regupwd" value="" placeholder="请输入密码"/>
				</p>
				<p>
					<span>忘记密码?</span>
				</p>
				<p>
					<input type="button" value="注册" id="register_button"/>
				</p>
			</form>
		</div>
		<footer class="footer">
			<div id="footer_help">
				<ul>
					<a href="#"><li>关于我们</li></a>
					<li class="footer_string"><b>|</b></li>
					<a href="#"><li>菜单帮助</li></a>
					<li class="footer_string"><b>|</b></li>
					<a href="#"><li>与我联系</li></a>
				</ul>
				<p style="clear: both;"></p>
			</div>
			<div id="footer_contact_pic">
				<ul>
					<li id="WB"></li>
					<li id="WX"></li>
					<li id="QQ"></li>
				</ul>
				<table></table>
				<p style="clear: both;"></p>
			</div>
		</footer>
		<script src="js/ajax.js"></script>
		<script src="js/register.js"></script>	
		<script src="js/login_success.js"></script>
	</body>
</html>
