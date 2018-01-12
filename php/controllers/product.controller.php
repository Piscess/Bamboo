<?php
require_once("../../init.php");
function get_index_products(){
	global $conn;
	$output=[
		//recommended=>[推荐商品列表],
		//new_arrival=>[新品上架],
		//top_sale=>[热销]
	];
	$sql="select hid,hname,hintro,hpic from bamboo_hot_products where breakfast>0 order by breakfast";
	$result=mysqli_query($conn,$sql);
	$products=mysqli_fetch_all($result,MYSQLI_ASSOC);
	$output["breakfast"]=$products;

	$sql="select hid,hname,hintro,hpic from bamboo_hot_products where lunch>0 order by lunch";
	$result=mysqli_query($conn,$sql);
	$products=mysqli_fetch_all($result,MYSQLI_ASSOC);
	$output["lunch"]=$products;

	$sql="select hid,hname,hintro,hpic from bamboo_hot_products where dinner>0 order by dinner";
	$result=mysqli_query($conn,$sql);
	$products=mysqli_fetch_all($result,MYSQLI_ASSOC);
	$output["dinner"]=$products;

	echo json_encode($output);
}
function get_products(){
    global $conn;
    $hid=$_REQUEST['hid'];
    $output=[
    		//pid=>[商品编号],
    		//title=>[标题],
    		//time=>[时间],
    		//subtitle=>[副标题],
    		//step1=>[步骤1],
    		//step1=>[步骤2],
    		//step1=>[步骤3],
    		//step1=>[步骤4],
    		//step1=>[步骤5],
    		//step1_pic=>[步骤1图],
    		//step1_pic=>[步骤2图],
    		//step1_pic=>[步骤3图],
    		//step1_pic=>[步骤4图],
    		//step1_pic=>[步骤5图],
    ];
    $steps=[];
    $step_pics=[];
    $sql="select pid,ptitle,ptime,psubtitle,step1,step2,step3,step4,step5 from";
    $sql.=" bamboo_products where pid = $hid";
    $result=mysqli_query($conn,$sql);
    $product=mysqli_fetch_assoc($result);
    foreach($product as $no=>$pro){
        if(strstr($no,"step")){
            $steps[]=$product[$no];
        }
    }
    foreach($steps as $no=>$pro){
        if(!$pro){
            unset($steps[$no]);
        }
    }
    //echo print_r($steps);
    $sql="select picid,main,step1_pic,step2_pic,step3_pic,step4_pic,step5_pic from";
    $sql.=" bamboo_products_pic where pid = $hid";
    $result=mysqli_query($conn,$sql);
    $product_pic=mysqli_fetch_assoc($result);
    foreach($product_pic as $no=>$p){
        if(strstr($no,"step")){
            $step_pics[]=$product_pic[$no];
        }
    }
    foreach($step_pics as $no=>$p){
        if(!$p){
            unset($step_pics[$no]);
        }
    }
    //echo print_r($step_pics);
    $output['pid']=$product['pid'];
    $output['ptitle']=$product['ptitle'];
    $output['ptime']=$product['ptime'];
    $output['psubtitle']=$product['psubtitle'];
    $output['main']=$product_pic['main'];
    $output['steps']=$steps;
    $output['step_pics']=$step_pics;
    echo json_encode($output);
}
function product_search(){
    global $conn;
    @$name = $_REQUEST["name"];
    if(!$name){
      $name = "";         //如果商品名称不存在,""
    }
    $sql="SELECT pid,ptitle,ptime,main_pic FROM bamboo_products WHERE ptitle LIKE '%$name%'";
    $result=mysqli_query($conn,$sql);
    $rows=mysqli_fetch_all($result,1);
    if($rows){
        echo json_encode($rows);
    }else{
        echo '{"msg":"抱歉,查无此商品"}';
    }
}

