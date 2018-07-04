package com.liut.jianshen;
import javax.servlet.*;  
import javax.servlet.http.*;  
import java.io.*;  
import java.util.*;

public class ListItemServlet extends HttpServlet{
	protected void doGet(HttpServletRequest request,HttpServletResponse response)  
            throws ServletException,java.io.IOException  
{  
ServletContext application=getServletContext() ;  
ServletConfig config=getServletConfig() ;  
response.setContentType("text/html;charset=gb2312");  
PrintWriter out=response.getWriter();   
HttpSession session =request.getSession();  
request.setCharacterEncoding("gb2312");  

//从session中获取购物车  
HashMap shoppingCar=(HashMap)session.getAttribute("shoppingCar");  
//显示购物车中的内容  
if(shoppingCar!=null)  
{  
Set show=shoppingCar.entrySet();  
Iterator it=show.iterator();  
while(it.hasNext())  
{  
out.print(it.next()+"<br>");  
}  
}  
else  
out.print("购物车为空！");   
}   

protected void doPost(HttpServletRequest request,HttpServletResponse response)  
                   throws ServletException,java.io.IOException  
{  
doGet(request,response);  
}
}
