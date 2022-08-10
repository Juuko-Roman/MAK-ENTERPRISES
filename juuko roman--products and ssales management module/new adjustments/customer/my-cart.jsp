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
    if(session.getAttribute("username")==null){
        response.sendRedirect("login.jsp");
    }
    
    
    String sql1="SELECT * FROM wishlist Join products where products.id=wishlist.productId and wishlist.customerId=7"; 
    
    DataBaseConnection db=new DataBaseConnection();
    Connection conn=db.CreateDBconnection();
    Statement myStatement=conn.createStatement();
     ResultSet result= myStatement.executeQuery(sql1);
   
    int total;
    int grandTotal=0;
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
          <h1 style="text-align: center; border-bottom: 1px solid #eee; margin: 50px 0px">MY CART</h1>
        <div class="container">
            

                
            <form method="post">
                <table class="table table-bordered">
                    <thead>
                        <tr> 	 	 	 	 	 	
                            <th>Remove</th>
                            <th>Image</th>
                            <th>Product Name</th>
                            <th>Quantity</th>
                            <th>Price Per unit</th>
                            <th>Shipping Charge</th>
                            <th>Grand Total</th>
                        </tr>
                    </thead>
                    
                    <tbody>
<%
while(  result.next()){
%>                        
                        <tr>
                            <td>
                                <div style="margin-top: 60px"><input type="checkbox"  name="delete" style="width: 20px; height: 20px; margin-left: 40px; outline: none" /></div>
                            </td>
                            
                            <td>
                                <div style="margin-top: 1px;"><img src="Assets/images/products/<%=result.getString("productImage1")%>" alt="alt" style="object-fit: contain" width="150px" height="150px" /></div>
                            </td>
                            <td>
                                <div ><%=result.getString("productName")%></div>
                            </td>
                            
                            <td>
                                <div ><input type="number" name="qty" placeholder="<%=result.getString("Quantity")%>" min="1" style="width: 60px"></div>
                            </td>
                            <td>
                                <div ><%=result.getString("productPrice")%></div>
                            </td>`
                            <td>
                                <div ><%=result.getString("shippingCharge")%></div>
                            </td>
                            <td>
                                <% total=Integer.parseInt(result.getString("productPrice"))+Integer.parseInt(result.getString("shippingCharge"));%>
                                <div ><%=total%></div>
                                <%grandTotal+=total;%>
                                
                            </td>
                        </tr>
<%
    }
%>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="7">
                                <h3 style="text-align: center">Total of all products is &nbsp; &nbsp; &nbsp;<span style="color: green; font-size: 40px">UGX. <%=grandTotal%></span></h3>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="7">
                                <div class="shopping-cart-btns">
                                    <span class="">
                                        <a href="http://localhost:8080/MAK_ENTERPRISES/index.jsp" class="btn btn-upper btn-primary outer-left-xs">Continue Shopping</a>

                                        <input type="submit" name="submit" value="Update shopping cart" class="btn btn-upper btn-primary pull-right outer-right-xs">
                                    </span>
                                    </form><!-- form -->
                                </div><!-- /.shopping-cart-btns -->
                            </td>
                        </tr>
                    </tfoot>
                </table>
                
            
        </div>
                            
       <div class="" style=" height: 400px">
            <div style="height: 100%; width: 80%;  margin-left: 150px">
                
                <div style="height: 100%; width: 40%;  margin-left: 70px; float: left">
                    <h4 style="font-size: 40px;">Billing Details</h4>
                    <div class="login-details" style="width: 100%;height: 550px">
                        <form action="login.jsp">
                        <div style="width: 100%;height: 80% ">
                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="BAddress"><i class="fa fa-map-marker" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="text" placeholder="Billing Address" name="BAddress" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>
                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="email"><i class="fa fa-envelope" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="BState" placeholder="Billing State" name="BState" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>
                                                        
                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="BCity"><i class="fa fa-home" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="text" placeholder="Billing City" name="BCity" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>

                            
                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="BPincode"><i class="fa fa-key" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="text" placeholder="Billing Pin Code" name="BPincode" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>
                            
                        </div>
                    </div>
                    
                </div>
                <div style="height: 100%; width: 45%;  margin-left: 30px; float: left">
                    <h4 style="font-size: 40px;">Shipping Details</h4>
                    <div class="login-details" style="width: 100%;height: 550px">
                        
                        <div style="width: 100%;height: 80% ">
                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="SAddress"><i class="fa fa-map-marker" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="text" placeholder="Shipping Address" name="SAddress" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>
                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="SState"><i class="fa fa-location-arrow" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="email" placeholder="Shipping State" name="SState" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>                            
                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="SCity"><i class="fa fa-home" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="text" placeholder="Shipping City" name="SCity" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>

                            
                            <div style="width: 100%;height: 60px; padding-top: 10px; font-size: 15px">
                                <label for="SPin"><i class="fa fa-key" style="position: absolute; padding: 15px;min-width: 40px "></i></label>
                                <input type="password" placeholder="Shipping Pin Code" name="SPin" style="width: 100%; height: 50px;border: none; border-bottom: 1px solid #bbb; padding-left: 40px; outline: none"/>
                            </div>
                            
                                
                        <div style="width: 100%;height: 60px ">
                            <button type="submit" style="background-color: #55f;width: 30%;height: 60px; margin-top: 10px; border-radius: 20px; color: white"><b>Check Out</b></button>
                        </div>
                    </div>
                    </form>
                </div>                
            </div>
    </div>    
        <jsp:include page="../includes/supporters.jsp" flush="true" />
        <jsp:include page="../includes/footer.jsp" flush="true" />   
              
    </body>
</html>
