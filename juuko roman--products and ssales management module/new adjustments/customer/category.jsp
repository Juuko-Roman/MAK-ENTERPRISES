<%-- 
    Document   : index
    Created on : Aug 4, 2022, 3:15:23 PM
    Author     : ROMAN
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection" %>
<%@page import="com.myClasses.DataBaseConnection" %>

<%
    String sql4="SELECT * FROM products where subCategory="+request.getParameter("cid");    
    DataBaseConnection db=new DataBaseConnection();
    Connection conn=db.CreateDBconnection();
    Statement myStatement=conn.createStatement();
     ResultSet result1= myStatement.executeQuery("SELECT * FROM subcategory where id="+request.getParameter("cid")); 
     
     result1.next();
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
    <title>shopping home page</title>
    <link rel="stylesheet" type="text/css" href="Assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="Assets/css/font-awesome/css/font-awesome.css">
            <script src="Assets/Js/myfunction2.js" "></script>
</head>
    <body>
        <jsp:include page="../includes/header.jsp" flush="true" />
        <jsp:include page="../includes/side-menu.jsp" flush="true" />
        
        <div class="slider" >
            <div class="mySlide fade" style="width: 1030px;"><img src="Assets/images/banners/cat-banner-1.jpg" width="100%" height="100%" >
                <div class="category"><%=result1.getString("subcategory")%></div>
            </div>
    </div>
        
        <div class="content" style="height: 80px"></div>
         
    
           <div class="content">
        <div class="productsContainer" >               
              
<%
    ResultSet result= myStatement.executeQuery(sql4);
    for(int i=0;i<4;i++)
        {
            result.next();
%>
            <div class="product">
                <div class="image"> <a href="product-details.jsp?id=<%=result.getInt("id")%>"><img src="Assets/images/products/<%=result.getString("productImage1")%>" width="100%" height="100%"/></a></div>
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
                        <i class="liked fa fa-thumbs-o-up " style="font-size: 20px" data-value="<%=result.getString("id")%>" ></i>                        <span style="font-size: 20px" class="likesCount"> <%=result.getString("likes")%>  likes</span>                            
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

    for(int i=0;result.next();i++)
        {
            
%>
            <div class="product">
                <div class="image"> <a href="product-details.jsp?id=<%=result.getInt("id")%>"><img src="Assets/images/products/<%=result.getString("productImage1")%>" width="100%" height="100%"/></a></div>
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
                        <i class="liked fa fa-thumbs-o-up " style="font-size: 20px" data-value="<%=result.getString("id")%>" ></i>                        <span style="font-size: 20px" class="likesCount"> <%=result.getString("likes")%>  likes</span>                            
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
        
        <jsp:include page="../includes/supporters.jsp" flush="true" />
        <jsp:include page="../includes/footer.jsp" flush="true" />   
        
  <script src="Assets/Js/jquery.min.js" type="text/javascript"></script>
        
        <script >
            
$(".liked").click(function(){
     $pid=$(this).data('value');
     $post=$(this);
     $(this).toggleClass("fa-thumbs-down");
     if($(this).hasClass("fa-thumbs-down")){
      $.post('../likeIncrease',{pid:$pid},
      function(response)
      {
          $post.parent().find('span.likesCount').text(response + " likes");
      });
        
     }
     else{
      $.post('../likeDecrease',{pid:$pid},
      function(response)
      {
          $post.parent().find('span.likesCount').text(response + " likes");
      });
     }
 });
 </script>
    </body>
</html>
