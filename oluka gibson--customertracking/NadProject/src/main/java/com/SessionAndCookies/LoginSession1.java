package com.SessionAndCookies;
import java.sql.*;

public class LoginSession1 {
	public static Connection getCon() throws Exception, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mak_enterprises","root","");
		return con;
		}
}
