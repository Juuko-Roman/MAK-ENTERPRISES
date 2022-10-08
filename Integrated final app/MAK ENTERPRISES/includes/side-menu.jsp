<%-- 
    Document   : side-menu
    Created on : Aug 4, 2022, 3:21:14 PM
    Author     : ROMAN
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection" %>
<%@page import="com.myClasses.DataBaseConnection" %>

<%
    DataBaseConnection db=new DataBaseConnection();
    Connection conn=db.CreateDBconnection();
    Statement myStatement=conn.createStatement();
     ResultSet result= myStatement.executeQuery("SELECT * FROM subcategory");    
%>
<div class="side-menu">
        <ul>
            <li><span></span><a class="active" href="#"><i class="icon fa fa-align-justify fa-fw"></i>CATEGORIES</a></li>
<%
    while(result.next())
        {
%>
            <li><a href="http://localhost:8080/MAK_ENTERPRISES/customer/category.jsp?cid=<%=result.getString("id")%>"><i class="icon fa fa-square fa-fw" style="color: #aaa;"></i><%=result.getString("subcategory")%><i style="float: right;" class="fa fa-angle-right"></i></a></li>
<%
        }
%>                                                           
        </ul>
    </div>