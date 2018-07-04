<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<head>
	<meta charset="UTF-8">
	<title>训练</title>
	<link rel="stylesheet" type="text/css" href="css/xunlian.css">
	<link rel="stylesheet" type="text/css" href="css/reset.css">
</head>
<body>
	
	<!--导航栏-->

	<div class="head">
		<div id="logo">
			<img src="img/logo1.jpg">
		</div>
		<div class="dropdown">
			<a href="index.jsp"><button class="dropbtn">首页</button></a>
		</div>
		<div class="dropdown">
			<a href="xunlian.jsp"><button class="dropbtn">训练</button></a>
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
			<a href="shop.jsp"><button class="dropbtn">商店</button></a>
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
		
		<div id="cart">
			<a href="shopcart.jsp"><img src="img/cart.png"></a>
		</div>
		<div id="user">
			<a href="#"><img src="img/user.png"></a>
		</div>
		<div class="bg"></div>
	</div>

	<!--多条件筛选-->
	
	<ul class="select">
		<li class="select-list">
			<dl id="select1">
				<dt>训练目标：</dt>
				<dd class="select-all selected"><a href="#">全部</a></dd>
				<dd><a href="#">增肌</a></dd>
				<dd><a href="#">减脂</a></dd>
				<dd><a href="#">健康</a></dd>
				<dd><a href="#">功能性训练</a></dd>
				<dd><a href="#">其它</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select2">
				<dt>训练肌群：</dt>
				<dd class="select-all selected"><a href="#">全部</a></dd>
				<dd><a href="#">胸部</a></dd>
				<dd><a href="#">背部</a></dd>
				<dd><a href="#">腿部</a></dd>
				<dd><a href="#">肩部</a></dd>
				<dd><a href="#">腰腹部</a></dd>
				<dd><a href="#">肱二/肱三</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select3">
				<dt>形式：</dt>
				<dd class="select-all selected"><a href="#">全部</a></dd>
				<dd><a href="#">图文</a></dd>
				<dd><a href="#">视频</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select4">
				<dt>排序：</dt>
				<dd class="select-all selected"><a href="#">综合排序</a></dd>
				<dd><a href="#">最新发布</a></dd>
				<dd><a href="#">最多点击</a></dd>
				<dd><a href="#">最多收藏</a></dd>
			</dl>
		</li>
		<li class="select-result">
			<dl>
				<dt>已选条件：</dt>
				<dd class="select-no">暂时没有选择过滤条件</dd>
			</dl>
		</li>
	</ul>

	<!--搜索框-->

	<form onsubmit="submitFn(this, event);">
		<div class="search-wrapper">
			<div class="input-holder">
				<input type="text" class="search-input" placeholder="Type to search" />
				<button class="search-icon" onclick="searchToggle(this, event);"><span></span></button>
			</div>
			<span class="close" onclick="searchToggle(this, event);"></span>
			<div class="result-container">
			</div>
		</div>
	</form>

	<!--视频图文-->

	<div class="content">
		<div class="body-content">
			<ul class="video-content">
				<li class="video matrix">
					<a href="9.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian3.png">
							</div>
							
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="9.html" class="title">
								<em class="keyword"></em>
								<a href="9.html">增肌的13条秘诀你可能想象不到</a>
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="9.html" class="up-name">增肌小达人</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="3.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian15.jpg">
							</div>
							
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="3.html" class="title">
								<em class="keyword"></em>
								四个动作帮你更好孤立二头肌
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="3.html" class="up-name">拉扎尔</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="5.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian16.jpg">
							</div>
							
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="5.html" class="title">
								<em class="keyword"></em>
								六个动作加强肩部力量完善肩部训练安全
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="5.html" class="up-name">施瓦辛格</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="1.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian17.jpg">
							</div>
							
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="1.html" class="title">
								<em class="keyword"></em>
								量身打造2018减脂计划
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="1.html" class="up-name">斯嘉丽</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="2.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian18.jpg">
							</div>
							
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="2.html" class="title">
								<em class="keyword"></em>
								健身房里如何高效练背？
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="2.html" class="up-name">拉扎尔</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="7.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian6.jpg">
							</div>
							
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="7.html" class="title">
								<em class="keyword"></em>
								练胸新手怎么做？
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="7.html" class="up-name">史泰龙</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="4.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian7.JPEG">
							</div>
							
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="4.html" class="title">
								<em class="keyword"></em>
								练三头肌强化麒麟臂，两种俯卧撑就好了。
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="4.html" class="up-name">施瓦辛格</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="6.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian8.jpg">
							</div>
							
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="6.html" class="title">
								<em class="keyword"></em>
								倒蹬机练腿怕受伤，用这5个动作，健身练腿效果一样棒！
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="6.html" class="up-name">老邢</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="8.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian9.jpg">
							</div>
						
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="8.html" class="title">
								<em class="keyword"></em>
								像运动员一样练腹肌，三个动作，增强你的躯干屈伸能力
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="8.html" class="up-name">周瑜</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="9.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian10.jpg">
							</div>
							
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="9.html" class="title">
								<em class="keyword"></em>
								美国大兵增肌的13条秘诀美国大兵增肌的13条秘诀
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="9.html" class="up-name">典韦</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="1.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian11.jpg">
							</div>
							
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="1.html" class="title">
								<em class="keyword"></em>
								大家都在说的功能性训练，到底是什么？
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="1.html" class="up-name">张飞</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="7.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian12.jpg">
							</div>
							
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="7.html" class="title">
								<em class="keyword"></em>
								两种俯卧撑给你钢铁般的胸肌
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="7.html" class="up-name">马超</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="3.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian13.jpg">
							</div>
							
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="3.html" class="title">
								<em class="keyword"></em>
								这个计划让你更快拥有大炮般的肱二头肌！
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="3.html" class="up-name">张飞</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="8.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./img/xunlian14.jpg">
							</div>
							
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="8.html" class="title">
								<em class="keyword"></em>
								别再想着花哨的腹肌了，这才是真正的核心力量！
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="8.html" class="up-name">周瑜</a>
							</span>
						</div>
					</div>
				</li>
			<!--  -->
				<li class="video matrix">
					<a href="./video/video.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./video/img/xunlian3.jpg">
							</div>
							<span class="so-imgTag_rb"> 
								07:07
							</span>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="./video/video.html" class="title">
								<em class="keyword"></em>
								美国大兵增肌的13条秘诀美国大兵增肌的13条秘诀
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="#" class="up-name">哈哈哈</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="./video/video.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./video/img/xunlian5.jpg">
							</div>
							<span class="so-imgTag_rb"> 
								07:07
							</span>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="./video/video.html" class="title">
								<em class="keyword"></em>
								美国大兵增肌的13条秘诀美国大兵增肌的13条秘诀
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="#" class="up-name">哈哈哈</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="./video/video.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./video/img/xunlian4.jpg">
							</div>
							<span class="so-imgTag_rb"> 
								07:07
							</span>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="./video/video.html" class="title">
								<em class="keyword"></em>
								美国大兵增肌的13条秘诀美国大兵增肌的13条秘诀
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="#" class="up-name">哈哈哈</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="./video/video.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./video/img/xunlian1.jpg">
							</div>
							<span class="so-imgTag_rb"> 
								07:07
							</span>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="./video/video.html" class="title">
								<em class="keyword"></em>
								一起来健身！！
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="#" class="up-name">哈哈哈</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="./video/video.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./video/img/xunlian2.jpg">
							</div>
							<span class="so-imgTag_rb"> 
								07:07
							</span>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="./video/video.html" class="title">
								<em class="keyword"></em>
								
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="#" class="up-name">菲尔斯基</a>
							</span>
						</div>
					</div>
				</li>
				<li class="video matrix">
					<a href="./video/video.html">
						<div class="img">
							<div class="lazy-img">
								<img src="./video/img/xunlian3.jpg">
							</div>
							<span class="so-imgTag_rb"> 
								07:07
							</span>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="./video/video.html" class="title">
								<em class="keyword"></em>
								教你健身
							</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
								<i class="tags-watch"></i>
								52.7万
							</span>
							<span title="上传时间" class="so-icon time">
								<i class="tags-time"></i>
								2018-04-10
							</span>
							<span title="上传者" class="so-icon">
								<i class="tags-uper"></i>
								<a href="#" class="up-name">菲尔破科夫斯基</a>
							</span>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="page-wrap">
			<div class="pager">
				<ul class="pages">
					<li class="page-item active">
						<button class="pagination-btn num-btn">1</button>
					</li>
					<li class="page-item">
						<button class="pagination-btn num-btn">2</button>
					</li>
					<li class="page-item">
						<button class="pagination-btn num-btn">3</button>
					</li>
					<li class="page-item">
						<button class="pagination-btn num-btn">4</button>
					</li>
					<li class="page-item">
						<button class="pagination-btn num-btn">5</button>
					</li>
					<li class="page-item">
						<button class="pagination-btn num-btn">6</button>
					</li>
					<strong>...</strong>
					<li class="page-item last">
						<button class="pagination-btn">10</button>
					</li>
					<li class="page-item next">
						<button class="nav-btn num-btn">下一页</button>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<!--底部-->
	<div class="xlk3"></div>
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

	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript">
		function searchToggle(obj, evt){
			var container = $(obj).closest('.search-wrapper');
			if(!container.hasClass('active')){
				  container.addClass('active');
				  evt.preventDefault();
			}
			else if(container.hasClass('active') && $(obj).closest('.input-holder').length == 0){
				  container.removeClass('active');
				  // clear input
				  container.find('.search-input').val('');
				  // clear and hide result container when we press close
				  container.find('.result-container').fadeOut(100, function(){$(this).empty();});
			}
		}
		function submitFn(obj, evt){
			value = $(obj).find('.search-input').val().trim();
			_html = "搜索关于: ";
			if(!value.length){
				_html = "请输入关键词！";
			}
			else{
				_html += "<b>" + value + "</b>";
			}
			$(obj).find('.result-container').html('<span>' + _html + '</span>');
			$(obj).find('.result-container').fadeIn(100);
			evt.preventDefault();
		}
	</script>


</body>
</html>