<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Human Resource</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>
        <div align="center">
            <h2>Register Employee</h2>
            <form action="<%=request.getContextPath()%>/EMPLOYE" method="post">
            
                <table style="with:80%">
                    <tr>
                        <td> ID</td>
                        <td><input type="number" name="EmployeeId"></td>
                    </tr>
                     <tr>
                        <td> Name</td>
                        <td><input type="text" name="Name"></td>
                    </tr> 
                    <tr>
                        <td> Location</td>
                        <td><input type="text" name="Location"></td>
                    </tr>
                    <tr>
                        <td> Contact No</td>
                        <td><input type="text" name="Contact"></td>
                    </tr> 
                    <tr>
                       
                    <tr>
                        <td> Gender</td>
                        <td><input type="radio" name="Gender" value="Male"> Male</td>
                        <td><input type="radio" name="Gender" value="female"> Female</td>
                    </tr> 
                    <tr>
                        <td> <input type="Reset" value="RESET"></td>
                        <td colspan="2"> <input type="Submit" value="Submit"></td>
                    </tr>
                  
                </table>
                
            
            </form>
            
        </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </body>
</html>
