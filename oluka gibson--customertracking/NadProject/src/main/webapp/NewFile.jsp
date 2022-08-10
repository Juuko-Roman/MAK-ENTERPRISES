<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.SessionAndCookies.LoginSession1" %>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<th>ID</th>
<th>CUSTOMER ID</th>
<th>PRODUCT ID</th>
</tr>
<%
Connection con = LoginSession1.getCon();
Statement st = con.createStatement();
String q1= "select * from orders";
ResultSet rs = st.executeQuery(q1);
while(rs.next()){
%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getInt(2)%></td>
<td><%=rs.getInt(3)%></td>
</tr>
<%
}
%>
</table>
</body>
</html>