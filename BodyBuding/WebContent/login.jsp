<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.liut.jianshen.*" %>
<%
	String action = request.getParameter("action");
	if(action != null &&  action.equals("login")) {
		
		String user_name = request.getParameter("uname");
		String user_password = request.getParameter("upwd");
		out.println(user_name);
		out.println(user_password);
		User u = null;
		try{			
			 u = User.validate(user_name, user_password);
		} catch(UserNotfoundException e) {
			out.println("用户没找到");
			return;
		} catch (PasswordNotCorrectException e) {
			out.println("密码不正确");
			return;
		}
		out.println(u);
		
		response.sendRedirect("index.jsp");
		session.setAttribute("user", u);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
    <title>健身联盟-用户登录</title>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" href="css/login.css"/>
</head>
<body>
	<div id="main">
    <div class="container">
        <div class="register">
            <div class="title">
                <span>登录</span>
                <a href="register.jsp">去注册</a>
            </div>
            <form autocomplete="off" action= "login.jsp" method="post">
            <input type="hidden" name="action" value ="login">
                <div class="default">
                    <p>请输入用户名或手机号码</p>
                    <input id="uname" name="uname" data-form="uname" type="text" placeholder = "用户名/手机"/>              
                </div>
                <div class="default">
                    <p>请输入账号密码</p>
                    <input id="upwd" name="upwd" data-form="upwd" type="password" placeholder = "密码"/>
                </div>
                <div class="submit">
                        <span class="notice">
                            <a href="#">忘记密码</a>
                        </span>
                   <input type="submit" value="登录">
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
<script src="js/login.js"></script>
</body>
</html>