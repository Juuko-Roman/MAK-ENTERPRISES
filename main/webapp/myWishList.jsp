<%-- 
    Document   : index
    Created on : Aug 4, 2022, 3:15:23 PM
    Author     : ROMAN
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
    <title>shopping home page</title>
    <link rel="stylesheet" type="text/css" href="Assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="Assets/css/font-awesome/css/font-awesome.css">
  <link rel="stylesheet" href="Assets/css/bootstrap.min.css">
  <script src="Assets/Js/jquery.min.js"></script>
  <script src="Assets/Js/bootstrap.min.js"></script>
</head>
    <body>
        <jsp:include page="../includes/header.jsp" flush="true" />
        <div class="slider" >
        </div>
        <div class="container">
            <form method="post">
                <table class="table">
                    
                    <tbody>
                        <tr> 
                            <td class="col-md-4">
                                <div style="margin-top: 1px;"><img src="Assets/images/products/D.jpg" alt="alt" style="object-fit: contain" width="150px" height="150px" /></div>
                            </td>
                            <td class="col-md-4">
                                <div >Queen size bed</div>
                            </td>
                            
                            <td class="col-md-4">
                                <div class="add-to-cart"><a href="http://localhost:8080/MAK_ENTERPRISES/customer/my-cart.jsp">ADD TO CART</a></div>
                            </td>
                                                   
                            <td class="col-md-2 close-btn">
                                <div style="margin-top: 60px"><a href="my-wishlist.jsp?del=" onClick="return confirm('Are you sure you want to delete?')" ><i class="fa fa-times"></i></a></div>
                            </td>                        
                        </tr>
                    </tbody>
                </table>
        </div>
        <jsp:include page="../includes/supporters.jsp" flush="true" />
        <jsp:include page="../includes/footer.jsp" flush="true" />   
        
        <script src="Assets/Js/image-slider.js" ></script>        
    </body>
</html>
