<%-- 
    Document   : index
    Created on : Aug 4, 2022, 3:15:23 PM
    Author     : ROMAN
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection" %>
<%@page import="com.myClasses.DataBaseConnection" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    String sql1="SELECT * FROM products where id="+request.getParameter("id");
    
    DataBaseConnection db=new DataBaseConnection();
    Connection conn=db.CreateDBconnection();
    Statement myStatement=conn.createStatement();
     ResultSet result= myStatement.executeQuery(sql1); 
result.next();

    
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
    <title>shopping home page</title>
    <link rel="stylesheet" type="text/css" href="Assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="Assets/css/font-awesome/css/font-awesome.css">
</head>
<body>
        <jsp:include page="../includes/header.jsp" flush="true" />
                <h1 style="border-bottom: 2px solid #ddd; text-align: center">Product Name: <%=result.getString("productName")%></h1>
        <div class="" style=" height: 500px">

            <div style="height: 100%; width: 80%;  margin-left: 150px">
                
                <div style="height: 100%; width: 60%;  margin-left: 30px; float: left">
                    <div class="login-image" style="width: 100%; height: 80%; padding: 25px; " >
                        <div style="margin: 45px; margin-top: 10px;border: 1px solid #eee"><img class="image" src="Assets/images/products/<%=result.getString("productImage1")%>" alt="alt" width="100%" height="100%"></div>
                    </div>
                    
                </div>
                <div style="height: 100%; width: 35%;  margin-left: 30px; float: left">
                    
                    <div class="login-details" style="width: 50%;height: 63% ;margin-top: 30px">
                        <div style="border: 2px solid #eee; width: 100%; height: 120px">
                            <img  class="image1" src="Assets/images/products/<%=result.getString("productImage1")%>" alt="alt"/ width="100%" height="100%" >
                        </div>
                        <div style="border: 2px solid #eee; width: 100%; height: 120px">
                            <img class="image2" src="Assets/images/products/<%=result.getString("productImage2")%>" alt="alt"/ width="100%" height="100%">
                        </div>
                        <div style="border: 2px solid #eee; width: 100%; height: 120px">
                            <img class="image3" src="Assets/images/products/<%=result.getString("productImage3")%>" alt="alt"/ width="100%" height="100%">
                        </div>
                        
                    </div>
                    </form>
                </div>
            </div>
        
    </div>    

        <jsp:include page="../includes/supporters.jsp" flush="true" />
        <jsp:include page="../includes/footer.jsp" flush="true" />  
        
  <script src="Assets/Js/jquery.min.js" type="text/javascript"></script>
        
        <script >
            
            
$(".image1").click(function(){
    $(".image").src=$(.image1).getAttribute("src");
     
 });
 
             
$(".image2").click(function(){
    $j=$(".image2").getAttribute("src");
    alert($j);
     
 });
 
             
$(".image3").click(function(){
    alert("hi");
     
 });
        </script>
    
    </body>
</html>
