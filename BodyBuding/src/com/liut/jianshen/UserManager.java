package com.liut.jianshen;
import java.sql.Connection;
import java.sql.*;
import java.util.*;
public class UserManager {
	public static List<User> getUsers() {
		List<User> list = new ArrayList<User>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs =null;
		try {
			conn = DB.getConn();
			stmt = DB.getStmt(conn);
			rs = stmt.executeQuery("select * from ruser order by id desc");/////////////////////////
			while(rs.next()) {
				User u = new User();
				u.setUser_name(rs.getString("user_name"));
				u.setUser_password(rs.getString("user_password"));
				u.setUser_phone(rs.getString("user_phone"));
				u.setUser_passwor2(rs.getString("user_password2"));
				list.add(u);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		} finally {
			DB.closeResultSet(rs);
			DB.closeStmt(stmt);
			DB.closeConn(conn);
		}
		
		return list;
	}
}
