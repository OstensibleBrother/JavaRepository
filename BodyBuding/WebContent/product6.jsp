<span style="font-size:12px;"><span style="font-size:14px;"><%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>  
<%@ page contentType="text/html;charset=utf-8"%>  
<html>  
<head>  
<style type="text/css">  
table {  
    border: 2px #CCCCCC solid;  
    width: 360px;  
}  
  
td,th {  
    height: 30px;  
    border: #CCCCCC 1px solid;  
}  
</style>  
</head>  
<body>  
    <%  
        //驱动程序名   
        String driverName = "com.mysql.jdbc.Driver";  
        //数据库用户名   
        String userName = "root";  
        //密码   
        String userPasswd = "1104522240";  
        //数据库名   
        String dbName = "jianshen";  
        //表名   
        String tableName = "product";  
        String productid = "11006";
        //联结字符串   
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        String sql = "SELECT * FROM " + tableName + " where product_id =" + productid;
System.out.println(sql);
        ResultSet rs = statement.executeQuery(sql); 
    %>  
    <br>  
    <br>  
    <%  
            out.print("本产品信息");  
       %> 
    <table align="center">  
        <tr>  
            <th>  
                <%  
                    out.print("产品id");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("产品名");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("产品价格");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("产品信息");  
                %>  
            </th>  
        </tr>  
  
        <%  
            while (rs.next()) {  
        %>  
        <tr>  
            <td>  
                <%  
                    out.print(rs.getInt("product_id"));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString("product_name"));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getInt("product_price"));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString("product_info"));  
                %>  
            </td>  
        </tr>  
        <%  
            }  
        %>  
    </table>  
    <div align="center">  
        <br> <br> <br>  
         
    </div>  
    <%  
        rs.close();  
        statement.close();  
        connection.close();  
    %>  
</body>  
</html></span><span style="font-size:24px;color: rgb(255, 0, 0);">  
</span></span> 