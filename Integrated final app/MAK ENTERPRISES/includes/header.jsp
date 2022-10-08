<%-- 
    Document   : header
    Created on : Aug 4, 2022, 3:18:45 PM
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
<header>
        <div class="top-header">
            <div class="left-content">
                <a href="http://localhost:8080/MAK_ENTERPRISES/customer/login.jsp">| &nbsp <i class="icon fa fa-user"></i> <b>ROMAN</b> &nbsp &nbsp</a>
                <a href="http://localhost:8080/MAK_ENTERPRISES/customer/login.jsp">| &nbsp  <i class="icon fa fa-shopping-cart"></i> My Cart &nbsp &nbsp</a>
                <a href="http://localhost:8080/MAK_ENTERPRISES/customer/logout.jsp">| &nbsp <i class="icon fa fa-sign-in"></i> logout |</a>
            </div>
            <div class="right-content">
                <div class="track-order"><a href="http://localhost:8080/MAK_ENTERPRISES/customer/track-orders.jsp">Track order</a></div>
            </div>
        </div>
        <div class="middle-header">
            <div class="company"><a href="index.html"><span style="color:green">Our Company</span></a></div>
            <div class="search">
                <input type="text" name="search" id="search" placeholder="Search here...">
                <button type="submit"><li class="icon fa fa-search"></li></button>
            </div>
            <div class="cart-details">
                <div class="cart-total">CART-<span class="amount" style="color:green">UGX 180000</span></div>
                <div class="cart-icon"><i class="icon fa fa-shopping-cart"></i></div>

            </div>

        </div>
        <div class="menu-bar">
            <div class="menu-adjustment">
                <ul class="nav-list">
                    <li class="active" dropdown>
                        <a href="http://localhost:8080/MAK_ENTERPRISES/" data-hover="dropdown" class="dropdown-toggle">HOME</a>
                                                                                                                                                    
                    </li>
<%
    while(result.next())
        {
%>
                    <li class="dropdown">
                        <a href="http://localhost:8080/MAK_ENTERPRISES/customer/category.jsp?cid=<%=result.getString("id")%>"> <%=result.getString("subcategory")%></a>
                    </li>
<%
        }
%>                    

                </ul>                              
            </div>
        </div>
    </header>
