<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="staff" uri="WEB-INF/myTLD.tld"%>    
 <%@ page import = "com.Clinton.dbConnection" %>
 <%@ page import = "java.sql.*" %>
 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
<meta charset="ISO-8859-1">
<title>Employee list</title>
</head>
<body style="background-color:lightblue">
<jsp:include page="sidebar.jsp"></jsp:include>
  <section class="home-section">
  <jsp:include page="topbar.jsp"></jsp:include>
<%
dbConnection con = new dbConnection();

Statement st = con.database();



%>
<h2 align = "Center"><font><Strong>HUMAN RESOURCE</Strong></font></h2><br>

<h2 align = "Center"><font><Strong>EMPLOYEE LIST</Strong></font></h2>

<staff:fetch/>
<table  style = "margin-left:auto; margin-right:auto; margin-top:20px;" cellpadding = "5"  border= "1" >
<tr>

<td><b>STAFFNAME</b></td>
<td><b>CATEGORY</b></td>
<td><b>CONTACT</b></td>
<td><b>ADDRESS</b></td>
</tr>

<% 
ResultSet result = st.executeQuery("Select* from employee");

while(result.next()){
%>

<tr>

<td><%=result.getString(2) %></td>

<td><%=result.getString(3) %></td>
<td><%=result.getString(4) %></td>
<td><%=result.getString(5) %></td>




</tr>


	
<% } %>
	</table>	
	<br><br>
	
	</section>
	 <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>
</body>
</html>