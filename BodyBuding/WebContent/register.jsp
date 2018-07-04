<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ page  import ="com.liut.jianshen.*"%>
<%	
request.setCharacterEncoding("utf-8");
String action = request.getParameter("action");
if(action != null && action.equals("register")) {
	String user_name = request.getParameter("uname");
	String user_password = request.getParameter("upwd");
	String user_password2 = request.getParameter("upwd_2");
	String user_phone = request.getParameter("phone");
	User u = new User(user_name, user_password, user_phone, user_password2);
	u.save();
	out.println("注册成功");
	return;
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
    <title>健身联盟-用户注册</title>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" href="css/login.css"/>
</head>
<body>
	    <div id="main">
        <div class="container">
            <div class="register">
                <div class="title">
                    <a href="login.jsp"><span>注册</span></a>
                    <a href="login.jsp">去登录</a>
                </div>
                <form autocomplete="off"  action="register.jsp" method="post">
                	<input type="hidden" name="action" value="register">
                    <div class="default">
                        <p>用户名由3~10个数字和英文字符组成</p>
                        <input id="uname" name="uname" data-form="uname" type="text" placeholder="用户名"/>
                    </div>
                    <div class="default">
                        <p>密码由8~10个数字和英文字符组成</p>
                        <input id="upwd" name="upwd" data-form="upwd" type="password" placeholder = "密码"/>
                        
                    </div>
                    <div class="default">
                        <p>请确认两次输入密码一致</p>
                        <input id="upwd_2" name="upwd_2" data-form="upwd_2" type="password" placeholder = "确认密码"/>
                        
                    </div>
                    <div class="default">
                        <p>请输入中国大陆手机号码</p>
                        <input id="phone" name="phone" data-form="phone" type="text" placeholder = "手机"/>
                        
                    </div>
                    <div class="submit">
                        <span class="notice">点击"注册"代表您同意遵守
                            <a href="#">用户协议</a>
                            和
                            <a href="#">隐私条款</a>
                        </span>
                        <input type="submit" value="注册">
                    </div>
                </form>
                <div class="other_login">
                    <div class="log">
                        <span>社交账号登录</span>
                    </div>
                    <div class="icon">
                        <ul>
                            <li data-log="icon" class="i_hover">
                                <img data-icon="wx" src="img/wx.png" alt=""/>
                                <span class="prompt" >微信登录</span>
                            </li>
                            <li data-log="icon" class="i_hover">
                                <img data-icon="qq" src="img/qq.png" alt=""/>
                                <span class="prompt" >QQ登录</span>
                            </li>
                            <li data-log="icon" class="i_hover">
                                <img data-icon="wb" src="img/wb.png" alt=""/>
                                <span class="prompt" >微博登录</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/header.js"></script>
    <script src="js/register.js"></script>
</body>
</html>