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
</head>
    <body>
        <jsp:include page="../includes/header.jsp" flush="true" />
    
        <div class="" style=" height: 500px">
            <div style="height: 100%; width: 60%;  margin-left: 300px">
                <div style="height: 100%; width: 45%;  margin-left: 30px; float: left">
                    <div class="login-image" style="width: 100%; height: 80%; padding: 25px; " >
                        <div style="margin: 45px; margin-top: 10px"><img src="Assets/images/login/signin-image.jpg" alt="alt"/></div>
                    </div>
                    <div class="" style="width: 100%; height: 15%; padding: 25px; " >
                        <div style="margin-left: 60px">Don't have an account? <a href="register.jsp" style="color: blue">Register here</a></div>
                    </div>
                </div>
                <div style="height: 100%; width: 45%;  margin-left: 30px; float: left">
                    <h2 style="font-size: 40px;">Sign in</h2>
                    <div class="login-details" style="width: 100%;height: 63% ">
                        <form action="my-wishlist.jsp">
                        <div style="width: 100%;height: 80% ">
                            <div style="width: 100%;height: 33.33333%; padding-top: 10px; font-size: 15px">
                                <label for="email"><i class="fa fa-envelope" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="email" placeholder="Email" name="email" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>
                            <div style="width: 100%;height: 33.33333%; padding-top: 10px; font-size: 15px">
                                <label for="password"><i class="fa fa-key" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="password" placeholder="password" name="password" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>
                            <div style="width: 100%;height: 33.33333%; padding-top: 10px; font-size: 18px">
                                <input type="checkbox" placeholder="Email" name="email" style="border: none; border-bottom: 1px solid #bbb; padding-left: 40px; margin-right:  5px; outline: none; width: 20px; height: 20px;" />
                                <label for="remember">Remember me</label>
                            </div>
                        </div>
                        <div style="width: 100%;height: 20% ">
                            <button type="submit" style="background-color: #55f;width: 30%;height: 80%; margin-top: 10px; border-radius: 20px; color: white"><b>LOG IN</b></button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        
    </div>    
        
        <jsp:include page="../includes/supporters.jsp" flush="true" />
        <jsp:include page="../includes/footer.jsp" flush="true" />   
        
        <script src="Assets/Js/image-slider.js" ></script>        
    </body>
</html>
