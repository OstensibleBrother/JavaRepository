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

//��session�л�ȡ���ﳵ  
HashMap shoppingCar=(HashMap)session.getAttribute("shoppingCar");  
//��ʾ���ﳵ�е�����  
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
out.print("���ﳵΪ�գ�");   
}   

protected void doPost(HttpServletRequest request,HttpServletResponse response)  
                   throws ServletException,java.io.IOException  
{  
doGet(request,response);  
}
}
