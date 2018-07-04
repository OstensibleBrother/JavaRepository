<span style="font-size:12px;"><span style="font-size:14px;"><%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>  
<%@ page contentType="text/html;charset=utf-8"%>  
<html>  
<head>  
<style type="text/css">  
table {  
    border: 2px #CCCCCC solid;  
    width: 900px;  
}  
  
td,th,tr {  
    height: 30px;  
    border: #CCCCCC 1px solid; 
	font-size:25px;
}
#c1 {
	text-align:center;
}
#c2 {
	text-align:right;
}  

body{
	background-color:rgb(229,233,247);
}
</style>  
</head>  
<body >  
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
        String tableName = "arricle";
        String article_id = "9";
        //联结字符串   ;
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        String sql = "SELECT * FROM " + tableName + " where article_id =" + article_id;  
        ResultSet rs = statement.executeQuery(sql);  
    %>  
    <br>  
    <br>  
    <%  
            out.print("本产品信息");  
       %> 
    <table align="center">
        <%  
            while (rs.next()) {  
        %>  
        <tr>  
            <td id="c1">  
                <%  
                    out.print(rs.getString("article_na"));  
                %>  
            </td> 
         </tr> 
         <tr>
            <td id="c2">  
                <%  
                    out.print(rs.getString("article_te"));  
                %>  
            </td>
         </tr> 
         <tr> 
            <td id="c3">  
                <%  
                    out.print(rs.getString("article_co"));  
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