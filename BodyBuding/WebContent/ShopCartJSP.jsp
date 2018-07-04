

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
                你目前没有购买任何产品
            </h1>
            
            <p>
                <a href="/shopCart/ShowProductsJSP.jsp">返回产品显示页</a>
            </p>
            <%
                } else {
                    Iterator iterator = products.iterator();
            %>
            
            <h1>
                你目前购买的产品为：
            </h1>
            
            <table border="1" cellspace="0">
                <tr bgcolor="#CCCCCC">
                    <td>
                        产品名称
                    </td>
                    <td>
                        产品描述
                    </td>
                    <td>
                        价格
                    </td>
                    <td>
                        操作
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
                            href="/BodyBuding/shopCart/ShoppingJSP.jsp?action=remove&removeId=<%=productItem.getId()%>">删除</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </table>
            <p>
                目前您购物车的总价格为：<%=cart.getAllProductPrice()%>
                元人民币。
            </p>
            <p>
                </br>
                <a href="/BodyBuding/shopCart/ShowProductsJSP.jsp">返回产品显示页</a>
            </p>
            <%
                }
            %>
      </body>
    </html>