<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import = "DB.DBconnection" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "mary.DBconnection" %>
 <%@ page  import ="java.sql.Connection" %>
 <%@ page  import= "java.sql.DriverManager" %>
 <%@ page  import= "java.sql.SQLException" %>
 <%@ page   import ="java.sql.Statement"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee list</title>
</head>
<body style="background-color:lightblue">

<h2 align = "Center"><font><Strong>HUMAN RESOURCE</Strong></font></h2><br>

<h2 align = "Center"><font><Strong>EMPLOYEE LIST</Strong></font></h2>

<table>
<tr>
<td><b>ID</b></td>
<td><b> NAME</b></td>
<td><b> LOCATION</b></td>
<td><b>CATEGORY</b></td>
<td><b>CONTACT </b></td>
<td><b>REGDATE</b></td>
<td><b>UPDATIONDATE</b></td>
<td><b>GENDER</b></td>

</tr>
 <% 
                    try{ 
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection cc = DriverManager.getConnection("jdbc:mysql://localhost:3306/makenterprise","root","");
                        Statement st = cc.createStatement();
                        st = cc.createStatement();
                        while(rt.next()ResultSet result = st.executeQuery("Select* from employee");
                        while(result.next()){
                            
                    %>

<% 

%>

<tr>

<td><%=result.getString(1) %></td>
<td><%=result.getString(2) %></td>
<td><%=result.getString(3) %></td>
<td><%=result.getString(4) %></td>
<td><%=result.getString(5) %></td>
<td><%=result.getString(6) %></td>
<td><%=result.getString(7) %></td>
<td><%=result.getString(8) %></td>

   

</tr>


	
<% } %>
	</table>	
	<br><br>
	

	
	<form action ="Reallocate" method = "POST">
		<input type="submit" value="REALLLOCATE">
                
	</form>
 <%
                        }
       
                    }catch(ClassNotFoundException | SQLException c){
                    out.println(c.getMessage());
                    }  
                    %>
%>	

</html>