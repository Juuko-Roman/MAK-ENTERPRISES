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
    String sql1="SELECT * FROM products where subCategory=1";
    String sql2="SELECT * FROM products where subCategory=2";
    String sql3="SELECT * FROM products where subCategory=3";
    String sql4="SELECT * FROM products where subCategory=4";    
    
    DataBaseConnection db=new DataBaseConnection();
    Connection conn=db.CreateDBconnection();
    Statement myStatement=conn.createStatement();
     ResultSet result= myStatement.executeQuery(sql1); 
    
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
    <title>shopping home page</title>
    <link rel="stylesheet" type="text/css" href="customer/Assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="customer/Assets/css/font-awesome/css/font-awesome.css">
</head>
    <body>
        <jsp:include page="includes/header.jsp" flush="true" />
        <jsp:include page="includes/side-menu.jsp" flush="true" />
        
<div class="slider" >
        <div class="mySlide fade" style="width: 1030px;"><img src="customer/Assets/images/image slider/slider4.jpeg" width="100%" height="100%" ></div>
        <div class="mySlide fade" style="width: 1030px;"><img src="customer/Assets/images/image slider/slider5.jpeg" width="100%" height="100%" ></div>                        
    </div>
         
    <div class="info slideUp" >
        <div class="row">
            <div class="col-xs-2">
                <i class="icon fa fa-truck"></i>
            </div>
            <div class="col-xs-10">
                <span style="color:orange">free shipping</span>
            </div>
            <div class="text clear" >free ship-on order over UGX. 600.00</div>    
        </div>
        
        <div class="row">
            <div class="col-xs-2">
                    <i class="icon fa fa-gift"></i>
            </div>
            <div class="col-xs-10">
                <span style="color:red; ">special sale</span>
            </div>
            <div class="text clear" >All items-sale up to 20% off </div> 
        </div>  
           
        
        <div class="row">
            <div class="col-xs-2">
                 <i class="icon fa fa-dollar"></i>
            </div>
            <div class="col-xs-10">
                <span style="color:green; padding:0px"> money back</span>
            </div>
            <div class="text clear" >30 Day Money Back Guarantee.</div>
        </div>   
    </div>

    <div class="content">
        <div class="productsContainer" >
            
<%
    for(int i=0;i<4;i++)
        {
            result.next();
%>

            <div class="product">
                <div class="image"> <a href="customer/product-details.jsp"><img src="Assets/images/products/<%=result.getString("productImage1")%>" width="100%" height="100%"/></a></div>
                <div class="image-footer">
                    <div class="name"><%=result.getString("productName")%></div>
                    <div class="price" style="color: rgb(125, 217, 137)">UGX.  <%=result.getString("productPrice")%>  &nbsp;&nbsp;<span style="color:#bbb"><s>UGX <%=result.getString("productPriceBeforeDiscount")%></s></span></div>
                    <div class="rating">
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star-half-o" style="color: yellow"></i>
                        <i class="fa fa-star-o" style="color: yellow"></i>                        
                    </div>
                    
                    <div class="likes" >
                        <i class="liked fa fa-thumbs-o-up" id="rating"  style="font-size: 20px" ></i><span style="font-size: 20px"> <%=result.getString("likes")%>  likes</span>                            
                        &nbsp; &nbsp;
                        
                    </div>
                    
                    <div class="add-to-cart"><a href="http://localhost:8080/MAK_ENTERPRISES/customer/login.jsp?pid=<%=result.getString("id")%>">ADD TO CART</a></div>                    
                </div>
            </div>
<%
        }
%>             
            
            
        </div>

        <div class="productsContainer" >
            
<%
    result= myStatement.executeQuery(sql2);
    for(int i=0;i<4;i++)
        {
            result.next();
%>
            <div class="product">
                <div class="image"> <a href="customer/product-details.jsp"><img src="Assets/images/products/<%=result.getString("productImage1")%>" width="100%" height="100%"/></a></div>
                <div class="image-footer">
                    <div class="name"><%=result.getString("productName")%></div>
                    <div class="price" style="color: rgb(125, 217, 137)">UGX.  <%=result.getString("productPrice")%>  &nbsp;&nbsp;<span style="color:#bbb"><s>UGX <%=result.getString("productPriceBeforeDiscount")%></s></span></div>
                    <div class="rating">
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star-half-o" style="color: yellow"></i>
                        <i class="fa fa-star-o" style="color: yellow"></i>                        
                    </div>
                    
                    <div class="likes" >
                        <i class="liked fa fa-thumbs-o-up" id="rating"  style="font-size: 20px" ></i><span style="font-size: 20px"> <%=result.getString("likes")%>  likes</span>                            
                        &nbsp; &nbsp;
                        
                    </div>
                    
                    <div class="add-to-cart"><a href="http://localhost:8080/MAK_ENTERPRISES/customer/my-cart.jsp?pid=<%=result.getString("id")%>">ADD TO CART</a></div>                    
                </div>
            </div>
<%
        }
%>             
            
            
        </div>

        <div class="productsContainer" >
            
<%
    result= myStatement.executeQuery(sql3);
    for(int i=0;i<4;i++)
        {
            result.next();
%>
            <div class="product">
                <div class="image"> <a href="customer/product-details.jsp"><img src="Assets/images/products/<%=result.getString("productImage1")%>" width="100%" height="100%"/></a></div>
                <div class="image-footer">
                    <div class="name"><%=result.getString("productName")%></div>
                    <div class="price" style="color: rgb(125, 217, 137)">UGX.  <%=result.getString("productPrice")%>  &nbsp;&nbsp;<span style="color:#bbb"><s>UGX <%=result.getString("productPriceBeforeDiscount")%></s></span></div>
                    <div class="rating">
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star-half-o" style="color: yellow"></i>
                        <i class="fa fa-star-o" style="color: yellow"></i>                        
                    </div>
                    
                    <div class="likes" >
                        <i class="liked fa fa-thumbs-o-up" id="rating"  style="font-size: 20px" ></i><span style="font-size: 20px"> <%=result.getString("likes")%>  likes</span>                            
                        &nbsp; &nbsp;
                        
                    </div>
                    
                    <div class="add-to-cart"><a href="http://localhost:8080/MAK_ENTERPRISES/customer/my-cart.jsp?pid=<%=result.getString("id")%>">ADD TO CART</a></div>                    
                </div>
            </div>
<%
        }
%>             
            
            
        </div>

        <div class="productsContainer" >
            
<%
    result= myStatement.executeQuery(sql4);
    for(int i=0;i<2;i++)
        {
            result.next();
%>
            <div class="product">
                <div class="image"> <a href="customer/product-details.jsp"><img src="Assets/images/products/<%=result.getString("productImage1")%>" width="100%" height="100%"/></a></div>
                <div class="image-footer">
                    <div class="name"><%=result.getString("productName")%></div>
                    <div class="price" style="color: rgb(125, 217, 137)">UGX.  <%=result.getString("productPrice")%>  &nbsp;&nbsp;<span style="color:#bbb"><s>UGX <%=result.getString("productPriceBeforeDiscount")%></s></span></div>
                    <div class="rating">
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star-half-o" style="color: yellow"></i>
                        <i class="fa fa-star-o" style="color: yellow"></i>                        
                    </div>
                    
                    <div class="likes" >
                        <i class="liked fa fa-thumbs-o-up" id="rating"  style="font-size: 20px" ></i><span style="font-size: 20px"> <%=result.getString("likes")%>  likes</span>                            
                        &nbsp; &nbsp;
                        
                    </div>
                    
                    <div class="add-to-cart"><a href="http://localhost:8080/MAK_ENTERPRISES/customer/my-cart.jsp?pid=<%=result.getString("id")%>">ADD TO CART</a></div>                    
                </div>
            </div>
<%
        }
%>             
            
            
        </div>

        
        
    </div>    
        
        <jsp:include page="includes/supporters.jsp" flush="true" />
        <jsp:include page="includes/footer.jsp" flush="true" />   
        
        <script src="customer/Assets/Js/image-slider.js" ></script>
        <script src="customer/Assets/Js/jquery.min.js" type="text/javascript"></script>
        <script src="customer/Assets/Js/myfunction.js" type="text/javascript"></script>  
        
    </body>
</html>
