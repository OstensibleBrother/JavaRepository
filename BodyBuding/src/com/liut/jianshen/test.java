package com.liut.jianshen;
import java.sql.*;
public class test {
	public static void mian(String[] args) throws Exception {
		Connection conn = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jianshen?user=root&password=root");
		System.out.println("lianjiecenggongWWWWWWWWWWWWWWW");
	}
}
