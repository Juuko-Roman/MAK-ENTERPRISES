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
    
        <div class="" style=" height: 650px">
            <div style="height: 100%; width: 60%;  margin-left: 300px">
                
                <div style="height: 100%; width: 45%;  margin-left: 30px; float: left">
                    <h2 style="font-size: 40px;">Sign Up</h2>
                    <div class="login-details" style="width: 100%;height: 550px">
                        <form action="login.jsp">
                        <div style="width: 100%;height: 80% ">
                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="name"><i class="fa fa-user" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="text" placeholder="user Name" name="name" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>
                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="email"><i class="fa fa-envelope" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="email" placeholder="Email" name="email" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>
                            <div style="width: 100%;height: 40px; padding-top: 10px; padding-left: 15px; font-size: 15px">
                                GENDER:
                                <label for="gender">
                                <input type="radio" placeholder="gender" name="gender" style="width: 20px; height: 20px; margin-left: 40px; outline: none" value="male"/>MALE</label>
                            <label for="gender">
                                <input type="radio" placeholder="gender" name="gender" style="width: 20px; height: 20px; margin-left: 40px; outline: none" value="female"/>FEMALE</label>        
                            </div>                            
                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="Tel No"><i class="fa fa-phone" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="text" placeholder="Telephone contact" name="tel" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>

                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="location"><i class="fa fa-map-marker" style="position: absolute; padding: 15px;min-width: 40px "></i>      </label>
                                <select name="Location" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none; background-color: white">
                                    <option value="Kampala">Kampala</option>
                                    <option value="Mukono">Mukono</option>
                                    <option value="Wakiso">Wakiso</option>
                                    <option value="Entebbe">Entebbe</option>
                                    <option value="others">others</option>                                   
                                </select>
               
                            </div>
                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="password"><i class="fa fa-key" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="password" placeholder="password" name="password1" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>
                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="password"><i class="fa fa-key" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="password" placeholder="Comfirm password" name="password2" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>                            
                            
                        </div>
                        <div style="width: 100%;height: 60px ">
                            <button type="submit" style="background-color: #55f;width: 30%;height: 60px; margin-top: 10px; border-radius: 20px; color: white"><b>REGISTER</b></button>
                        </div>
                    </div>
                    </form>
                </div>
                <div style="height: 500px; width: 45%;  margin-left: 30px; float: left">
                    <div class="login-image" style="width: 100%; height: 80%; padding: 25px; " >
                        <div style="margin: 45px; margin-top: 10px"><img src="Assets/images/login/signup-image.jpg" alt="alt"/></div>
                    </div>
                    <div class="" style="width: 100%; height: 15%; padding: 25px; " >
                        <div style="margin-left: 60px">Have an account? <a href="login.jsp" style="color: blue">Login here</a></div>
                    </div>
                </div>
            </div>
   
    </div>    
        
        <jsp:include page="../includes/supporters.jsp" flush="true" />
        <jsp:include page="../includes/footer.jsp" flush="true" />   
        
        <script src="Assets/Js/image-slider.js" ></script>        
    </body>
</html>
