<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<meta charset="UTF-8">
	<title>video</title>
	<style>
	body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,button,textarea,p,blockquote,th,td { margin:0; padding:0; }
	body { background:#fff; color:#555; font-size:14px; font-family: Verdana, Arial, Helvetica, sans-serif; }
	td,th,caption { font-size:14px; }
	h1, h2, h3, h4, h5, h6 { font-weight:normal; font-size:100%; }
	address, caption, cite, code, dfn, em, strong, th, var { font-style:normal; font-weight:normal;}
	a { color:#555; text-decoration:none; }
	a:hover { text-decoration:underline; }
	img { border:none; }
	ol,ul,li { list-style:none; }
	input, textarea, select, button { font:14px Verdana,Helvetica,Arial,sans-serif; }
	table { border-collapse:collapse; }
	html {overflow-y: scroll;} 
	.clearfix:after {content: "."; display: block; height:0; clear:both; visibility: hidden;}
	.clearfix { *zoom:1; }

	body{ background-color: #292929; 	}

	#testBox{
		width: 953px;
		height: 537px;
		margin: 0 auto;
	}
    </style>
<link rel="stylesheet" href="css/video.css">
<link rel="stylesheet" href="iconfont/iconfont.css">
</head>
<body>
	<div class="head">
		<div id="logo">
			<img src="img/logo1.jpg">
		</div>
		<div class="dropdown">
			<a href="head.html"><button class="dropbtn">首页</button></a>
		</div>
		<div class="dropdown">
			<a href="#"><button class="dropbtn">训练</button></a>
            <div class="dropdown-content">	
			    <div class="a">
            		<p>所有计划</p>
            		<div></div>
				    <a href="#">查看所有培训文章</a>
				    <a href="#">查看所有训练计划</a>
				    <a href="#">训练数据库</a>
				    <a href="#">目前的挑战</a>
			    </div>
			    <div class="a">
            		<p>训练目标</p>
            		<div></div>
				    <a href="#">增肌</a>
				    <a href="#">减脂</a>
				    <a href="#">健康</a>
				    <a href="#">功能性训练</a>
				    <a href="#">其它</a>
			    </div>
			    <div class="a">
            		<p>训练肌群</p>
            		<div></div>
				    <a href="#">整体</a>
				    <a href="#">胸部</a>
				    <a href="#">背部</a>
				    <a href="#">腿部</a>
				    <a href="#">肩部</a>
				    <a href="#">腰腹肌</a>
				    <a href="#">肱二/肱三</a>
			    </div>
            </div>
		</div>
		<div class="dropdown">
			<a href="#"><button class="dropbtn">商店</button></a>
            <div class="dropdown-content">
            	<div class="a">
            		<p>器械</p>
            		<div></div>
				    <a href="#">杠铃/哑铃</a>
				    <a href="#">复合器械</a>
				    <a href="#">跑步机</a>
				    <a href="#">护具</a>
				    <a href="#">其它</a>
			    </div>
			    <div class="a">
            		<p>补剂</p>
            		<div></div>
				    <a href="#">蛋白粉</a>
				    <a href="#">氨基酸</a>
				    <a href="#">氮泵</a>
				    <a href="#">维生素</a>
				    <a href="#">其它</a>
			    </div>
			    <div class="a">
            		<p>课程</p>
            		<div></div>
				    <a href="#">私教课</a>
				    <a href="#">训练班</a>
				    <a href="#">其它</a>
			    </div>
            </div>
		</div>
		<div class="dropdown">
			<a href="#"><button class="dropbtn">论坛</button></a>
		</div>
		<div id="cart">
			<a href="#"><img src="img/cart.png"></a>
		</div>
		<div id="user">
			<a href="#"><img src="img/user.png"></a>
		</div>
	</div>
	<div id="testBox">

	</div>
	<!--底部-->

	<div class="footer">
		<div class="footer-pic"><a href="#"><img src="img/logo1.jpg"></a></div>
		<div class="footer-w">
			<div id="footer-w1">
				<a href="#">工作机会</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="#">关于</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="#">支持</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="#">媒体中心</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="#">API</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="#">安全中心</a>
			</div>
			<div id="footer-w2">
				<p>©2018健身联盟有限公司版权所有</p>
			</div>
			<div id="footer-w3">
				<a href="">隐私</a>&nbsp;|&nbsp;<a href="#">法律条款</a>
			</div>
			<div id="footer-w4">
				冀网文[2017]0000-000号&nbsp;|&nbsp;互联网违法和不良信息举报电话：0000-00000000<br>冀公网安备：00000000000000&nbsp;|&nbsp;客服电话：0000-00000000<br>河北省石家庄市南二环东路20号<br><br>在开始任何饮食或运动计划或服用任何膳食补充剂之前，务必咨询合格的医疗保健专业人员。我们网站上的内容仅用于信息和教育目的，并非作为医疗建议或替代与合格医疗保健专业人员的关系
			</div>
		</div>
	</div>
<script src="js/video.js"></script>
<script>
 	var FZ_VIDEO = new createVideo(
 		"testBox",	//容器的id
 		{
 			url 		: 'video.mp4', 	//视频地址
 			autoplay	: true				//是否自动播放
 		}
 	);
</script>
</body>
</html>