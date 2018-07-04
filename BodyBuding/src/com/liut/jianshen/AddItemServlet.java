package com.liut.jianshen;
import javax.servlet.*;  
import javax.servlet.http.*;  
import java.io.*;  
import java.util.*; 
public class AddItemServlet extends HttpServlet{
	 protected void doGet(HttpServletRequest request,HttpServletResponse response)  
             throws ServletException,java.io.IOException  
{  
ServletContext application=getServletContext() ;  
ServletConfig config=getServletConfig() ;  
response.setContentType("text/html;charset=gb2312");  
PrintWriter out=response.getWriter();   
HttpSession session =request.getSession();  
request.setCharacterEncoding("gb2312");  

//读取表单传入的商品ID及数量  
String id=request.getParameter("itemID");   
String num=request.getParameter("quantity");  
if(id!=null && num.length()!=0)  
{  //从Sessionn中读取购物车  
HashMap shoppingCar=(HashMap)session.getAttribute("shoppingCar");  
if(shoppingCar==null)  
shoppingCar=new HashMap();  
//将商品添加到购物车中  
String onum=(String)shoppingCar.get(id);  
if(onum==null)  
shoppingCar.put(id,num);  
else  
{  
int n1=Integer.parseInt(num);  
int n2=Integer.parseInt(onum);  
String result=String.valueOf(n1+n2);  
shoppingCar.put(id,result);  
}     
//将购物车写回session中保存  
session.setAttribute("shoppingCar",shoppingCar);   
}  
else  //如果传入的商品ID号为空或数量为空，显示提示信息  
System.out.print("商品ID号为空会或数量为空！");  
//返回商品列表页  
response.sendRedirect("/servletProject/exam403.jsp");     
}   

protected void doPost(HttpServletRequest request,HttpServletResponse response)  
                    throws ServletException,java.io.IOException  
{  
doGet(request,response);  
}  
}
