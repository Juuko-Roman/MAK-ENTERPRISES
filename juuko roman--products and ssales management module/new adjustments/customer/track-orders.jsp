<%-- 
    Document   : index
    Created on : Aug 4, 2022, 3:15:23 PM
    Author     : ROMAN
--%>
<%
if(session.getAttribute("username")==null){
        response.sendRedirect("login.jsp");
    }
%>
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
        <div style="height: 50px"></div>        
        <div class="container">
            <h2 style="text-align: center">TRACK YOUR ORDER</h2>
            <h5 style="text-align: center">Please enter your Order ID in the box below and press Enter. This was given to you on your receipt and in the confirmation email you should have received.</h5>
            <form action="order-details.jsp" method="post">
                <div class="form-group">
                    <label for="orderId">Order Id:</label>
                    <input type="text" id="orderId" name="orderId" placeholder="Enter order Id" class="form-control">
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email" placeholder="Enter Your Email" class="form-control">
                </div>
                <button type="submit" class="btn btn-danger" value="submit">Proceed to track</button>
                
            </form>
        </div>
        <div style="height: 50px"></div>
        <jsp:include page="../includes/supporters.jsp" flush="true" />
        <jsp:include page="../includes/footer.jsp" flush="true" />   
        
        <script src="Assets/Js/image-slider.js" ></script>        
    </body>
</html>
