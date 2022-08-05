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
            <div class="product">
                <div class="image"> <img src="Assets/images/products/1 (1).jpg" width="100%" height="100%"/></div>
                <div class="image-footer">
                    <div class="name">Queen size Bed</div>
                    <div class="price" style="color: rgb(125, 217, 137)">UGX. 200000   &nbsp;&nbsp;<span style="color:#bbb"><s>UGX 400000</s></span></div>
                    <div class="rating">
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star" style="color: yellow"></i>
                        <i class="fa fa-star-half-o" style="color: yellow"></i>
                        <i class="fa fa-star-o" style="color: yellow"></i>                        
                    </div>
                    
                    <div class="likes" >
                        <i class="fa fa-thumbs-o-up" id="rating"  style="font-size: 20px" ></i><span style="font-size: 20px">  120 likes</span>                            
                        &nbsp; &nbsp;
                        
                    </div>
                    
                    <div class="add-to-cart"><a href="http://localhost:8080/MAK_ENTERPRISES/customer/my-cart.jsp">ADD TO CART</a></div>                    
                </div>
            </div>
            
        </div>
        
        
        
    </div>    
        
        <jsp:include page="includes/supporters.jsp" flush="true" />
        <jsp:include page="includes/footer.jsp" flush="true" />   
        
        <script src="customer/Assets/Js/image-slider.js" ></script>
        <script src="customer/Assets/Js/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="customer/Assets/Js/myfunction.js" ></script>  
        
    </body>
</html>
