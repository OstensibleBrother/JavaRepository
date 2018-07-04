<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/shop.css">
<link rel="stylesheet" type="text/css" href="css/reset.css">
<title>商店</title>
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
				<dt>类别：</dt>
				<dd class="select-all selected"><a href="#">全部</a></dd>
				<dd><a href="#">器械</a></dd>
				<dd><a href="#">补剂</a></dd>
				<dd><a href="#">课程</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select2">
				<dt>种类：</dt>
				<dd class="select-all selected"><a href="#">全部</a></dd>
				<dd><a href="#">杠铃/哑铃</a></dd>
				<dd><a href="#">复合机械</a></dd>
				<dd><a href="#">跑步机</a></dd>
				<dd><a href="#">护具</a></dd>
				<dd><a href="#">蛋白粉</a></dd>
				<dd><a href="#">氨基酸</a></dd>
				<dd><a href="#">氮泵</a></dd>
				<dd><a href="#">维生素</a></dd>
				<dd><a href="#">私教课</a></dd>
				<dd><a href="#">训练班</a></dd>
				<dd><a href="#">其它</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select3">
				<dt>排序：</dt>
				<dd class="select-all selected"><a href="#">综合排序</a></dd>
				<dd><a href="#">销量</a></dd>
				<dd><a href="#">价格降序</a></dd>
				<dd><a href="#">价格升序</a></dd>
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

	<!--页码-->

	<div class="content">
		<div class="body-content">
			<ul class="goods-content">
				<li class="goods matrix">
					<a href="shopping.html">
						<div class="img">
							<div class="lazy-img">
								<img src="img/service4.jpg">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="shopping.html" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;230
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								1089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product2.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/11002.jpg">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product2.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;456
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product3.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/11003.jpg">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product3.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;550
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product4.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/11004.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product4.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;460
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product5.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/11005.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product5.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;420
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product6.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/11006.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product6.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;412
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product7.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/11007.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product7.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;403
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product7.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/11008.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product7.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;110
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product7.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/11009.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product7.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;120
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="shopping.html">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/11009.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product7.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;130
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product7.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/11010.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product7.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;150
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product7.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/11011.jpg">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product7.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;260
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product7.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/12001.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product7.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;280
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/12002.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;600
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/12003.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;700
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/12004.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;710
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/13001.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;666
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/13002.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product7.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;656
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/13003.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;800
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
							</span>
						</div>
					</div>
				</li>
				<li class="goods matrix">
					<a href="product.jsp">
						<div class="img">
							<div class="lazy-img">
								<img src="img/shangpin/13004.png">
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="product.jsp" class="title">
								<em class="keyword"></em>
								Muscletech肌肉科技白金乳清蛋白粉 蛋白质粉健身增肌粉健肌粉5磅
							</a>
						</div>
						<div class="tags">
							<span title="价格" class="so-icon money">
								<i class="tags-money"></i>
								&yen;850
							</span>
							<span title="销量" class="so-icon sale-num">
								<i class="tags-sale"></i>
								2089人付款
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