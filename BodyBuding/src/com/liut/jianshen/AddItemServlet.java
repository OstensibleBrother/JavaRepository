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

//��ȡ���������ƷID������  
String id=request.getParameter("itemID");   
String num=request.getParameter("quantity");  
if(id!=null && num.length()!=0)  
{  //��Sessionn�ж�ȡ���ﳵ  
HashMap shoppingCar=(HashMap)session.getAttribute("shoppingCar");  
if(shoppingCar==null)  
shoppingCar=new HashMap();  
//����Ʒ��ӵ����ﳵ��  
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
//�����ﳵд��session�б���  
session.setAttribute("shoppingCar",shoppingCar);   
}  
else  //����������ƷID��Ϊ�ջ�����Ϊ�գ���ʾ��ʾ��Ϣ  
System.out.print("��ƷID��Ϊ�ջ������Ϊ�գ�");  
//������Ʒ�б�ҳ  
response.sendRedirect("/servletProject/exam403.jsp");     
}   

protected void doPost(HttpServletRequest request,HttpServletResponse response)  
                    throws ServletException,java.io.IOException  
{  
doGet(request,response);  
}  
}
