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
    String sql1="SELECT * FROM products where id="+request.getParameter("pid"); 
    
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
                    <tfoot>
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
                    <tbody>
                        <tr>
                            <td>
                                <div style="margin-top: 60px"><input type="checkbox"  name="delete" style="width: 20px; height: 20px; margin-left: 40px; outline: none" value="female"/></div>
                            </td>
                            
                            <td>
                                <div style="margin-top: 1px;"><img src="Assets/images/products/D.jpg" alt="alt" style="object-fit: contain" width="150px" height="150px" /></div>
                            </td>
                            <td>
                                <div >hhh</div>
                            </td>
                            
                            <td>
                                <div ><input type="number" name="qty" placeholder="2" min="1" style="width: 60px"></div>
                            </td>
                            <td>
                                <div >UGX 200000</div>
                            </td>`
                            <td>
                                <div >UGX 50000</div>
                            </td>
                            <td>
                                <div >UGX 250000</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="margin-top: 60px"><input type="checkbox"  name="delete" style="width: 20px; height: 20px; margin-left: 40px; outline: none" value="female"/></div>
                            </td>
                            
                            <td>
                                
                                <div style="margin-top: 1px;"><img src="Assets/images/products/<%=result.getString("productImage1")%>" alt="alt" style="object-fit: contain" width="150px" height="150px" /></div>
                            </td>
                            <td>
                                <div ><%=result.getString("productName")%></div>
                            </td>
                            
                            <td>
                                <div ><input type="number" name="qty" placeholder="2" min="1" style="width: 60px"></div>
                            </td>
                            <td>
                                <div >UGX <%=result.getString("productPrice")%></div>
                            </td>`
                            <td>
                                <div >UGX <%=result.getString("shippingCharge")%></div>
                            </td>
                            <td>
                                <% int total=Integer.parseInt(result.getString("productPrice"))+Integer.parseInt(result.getString("shippingCharge"));%>
                                <div >UGX <%=total%></div>
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
