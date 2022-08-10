<%@ page import="com.SessionAndCookies.LoginSession1" %>
<%@ page import="java.sql.*" %> 
<%
int i=0;
	try{
			Connection con = LoginSession1.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select likes from likepreferences where productname = 'table'");
			rs.next();
			int like = rs.getInt("likes");
			st.executeUpdate("UPDATE likepreferences SET likes="+(like+1)+" WHERE productname = 'table'");
		}
			catch(Exception e){
			System.out.print(e);
		}
	
%>