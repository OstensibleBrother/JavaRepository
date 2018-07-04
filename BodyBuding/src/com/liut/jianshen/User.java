package com.liut.jianshen;

import java.sql.*;
import java.util.*;

public class User {
	private String user_name;
	private String user_password;
	private String user_password2;
	private String user_phone;
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_password2() {
		return user_password2;
	}
	public void setUser_passwor2(String user_password2) {
		this.user_password2 = user_password2;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public User() {
		
	}
	public User(String user_name ,String user_password, String user_phone, String user_password2 ) {
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_phone = user_phone;
		this.user_password2 =  user_password2;
	}
	public void save() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DB.getConn();
			Statement stmt = DB.getStmt(conn);
			String sql = "insert into user values(?,?,?,?)";
			pstmt = DB.getPStmt(conn, sql);
			pstmt.setString(1, user_name);
			pstmt.setString(2, user_password);
			pstmt.setString(3, user_phone);
			pstmt.setString(4, user_password2);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DB.closeStmt(pstmt);
			DB.closeConn(conn);
		}	
	}
	
	public static List<User> getUsers() {
		List<User> list = new ArrayList<User>();
		Connection conn = null;
		ResultSet rs = null;
		try {
			conn = DB.getConn();
			String sql = "select * from ruser";
			rs = DB.executeQuery(conn, sql);
			while(rs.next()) {
				User u = new User();
				u.setUser_name(rs.getString("user_name"));
				u.setUser_password(rs.getString("user_password"));
				u.setUser_phone(rs.getString("user_phone"));
				u.setUser_passwor2(rs.getString("user_password2"));
				list.add(u);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			DB.closeResultSet(rs);
			DB.closeConn(conn);
		}
		
		
		return list;
	}
	
	public static boolean userExists(String username) {
		return false;
	}
	public static boolean isPasswordCorrect(String username, String password) {
		return false;
	}
	
	public static User validate(String username,String password) throws UserNotfoundException, PasswordNotCorrectException {
		Connection conn = null;
		ResultSet rs = null;
		User u = null;
		try {
			conn = DB.getConn();
			String sql = "select * from user where user_name ='" + username + "'";
			rs = DB.executeQuery(conn, sql);
			if(!rs.next()) {
				throw new UserNotfoundException();
			} else if(!rs.getString("user_password").equals(password)) {
				throw new PasswordNotCorrectException();
			} else {
				u = new User();
				u.setUser_name(rs.getString("user_name"));
				u.setUser_password(rs.getString("user_password"));
				u.setUser_phone(rs.getString("user_phone"));
				u.setUser_passwor2(rs.getString("user_password2"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DB.closeResultSet(rs);
			DB.closeConn(conn);
		}	
		return u;
	}
}