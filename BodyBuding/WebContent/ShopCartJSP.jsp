

    <%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
    <%@ page import="shopcart.dto.*" %>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <html>
      <head>
        <base href="<%=basePath%>">
        
        <title>My JSP 'ShowCartJSP.jsp' starting page</title>
        
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">    
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
        <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->
      </head>
      
      <body><% 
      HttpSession mysession = request.getSession();
            ShopCart cart = (ShopCart) mysession.getAttribute("shopCart");
        List products = null;
                if (cart == null
                        || (products = cart.getAllProductsFromCart()) == null) {
            %>
            
            <h1>
                ��Ŀǰû�й����κβ�Ʒ
            </h1>
            
            <p>
                <a href="/shopCart/ShowProductsJSP.jsp">���ز�Ʒ��ʾҳ</a>
            </p>
            <%
                } else {
                    Iterator iterator = products.iterator();
            %>
            
            <h1>
                ��Ŀǰ����Ĳ�ƷΪ��
            </h1>
            
            <table border="1" cellspace="0">
                <tr bgcolor="#CCCCCC">
                    <td>
                        ��Ʒ����
                    </td>
                    <td>
                        ��Ʒ����
                    </td>
                    <td>
                        �۸�
                    </td>
                    <td>
                        ����
                    </td>
                </tr>
                <%
                    while (iterator.hasNext()) {
                            Product productItem = (Product) iterator.next();
                %>
                <tr>
                    <td>
                        <%=productItem.getName()%>
                    </td>
                    <td><%=productItem.getDescription()%>
                    </td>
                    <td>
                        <%=productItem.getPrice()%></td>
                    <td>
                        <a
                            href="/BodyBuding/shopCart/ShoppingJSP.jsp?action=remove&removeId=<%=productItem.getId()%>">ɾ��</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </table>
            <p>
                Ŀǰ�����ﳵ���ܼ۸�Ϊ��<%=cart.getAllProductPrice()%>
                Ԫ����ҡ�
            </p>
            <p>
                </br>
                <a href="/BodyBuding/shopCart/ShowProductsJSP.jsp">���ز�Ʒ��ʾҳ</a>
            </p>
            <%
                }
            %>
      </body>
    </html>