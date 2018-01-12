window.onload=function(){
	var list=document.getElementById("banner_pic");
	var prev=document.getElementById("prev");
	var next=document.getElementById("next");
	var dot=document.getElementsByClassName("b_dot");
	function ainmate(offset){
		var newLeft=parseInt(list.style.left)+offset;
		if(newLeft<-2816){
      		list.style.left = -704 + "px";
 		}else if(newLeft>-704){
     		list.style.left = -2816 + "px";
 		}else{
			list.style.left= newLeft + "px";
 		}
 		var i=parseInt(list.style.left)/-704;
		if(i==1){
			dot[i+2].style.background="white";
		}else{
			dot[i-2].style.background="white";
		}
 		dot[i-1].style.background="rgb(153,205,153)";
	}
	prev.onclick=function(){
		ainmate(704);
	}
	next.onclick=function(){
		ainmate(-704);
	}
//	var i=1;
//	var banner=function(){
//		list.style.transform="translate("+-704*i+"px)";
//		i++;
//	}
	var timer;
	function play(){
    	timer = setInterval(function () {
        	next.onclick();
    	}, 3000)
	}
	play();
	for(var j=0;j<dot.length;j++){
//		function outer(j){
//			return function(){
//				list.style.left =( -704 * j )+ "px";
//			}
//		}
		dot[j].onmouseover=()=>{
			//outer(j+1);
			clearInterval(timer);
		};
		dot[j].onmouseout=()=>{
			play();
		}
	}
}
