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
  
  	<script language="javascript" type="text/javascript">
var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
 if(popUpWin)
{
if(!popUpWin.closed) popUpWin.close();
}
popUpWin = open(URLStr,'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+600+',height='+600+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}

</script>
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
                            <th>#</th>
                            <th>Image</th>
                            <th>Product Name</th>
                            <th>Quantity</th>
                            <th>Price Per unit</th>
                            <th>Grand Total</th>
                            <th>payment method</th>
                            <th>Order Date</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div style="margin-top: 60px">1</div>
                            </td>
                            
                            <td>
                                <div style="margin-top: 1px;"><img src="Assets/images/products/D.jpg" alt="alt" style="object-fit: contain" width="150px" height="150px" /></div>
                            </td>
                            <td>
                                <div >Queen size bed</div>
                            </td>
                            
                            <td>
                                <div >3</div>
                            </td>
                            <td>
                                <div >UGX 200000</div>
                            </td>`
                            
                            <td>
                                <div >UGX 250000</div>
                            </td>
                            <td>
                                <div >Paypal</div>
                            </td>
                            <td>
                                <div >2/6/2020</div>
                            </td>
                            <td>
                                <div ><a href="javascript:void(0);" onClick="popUpWindow('track-order.jsp?oid=5');" title="Track order">Track</a></div>
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
