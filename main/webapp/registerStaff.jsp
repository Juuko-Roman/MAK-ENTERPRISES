<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Account</title>
         <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="mystyles.css" rel="stylesheet" type="text/css"/>
        <link href="styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body >
    <jsp:include page="sidebar.jsp"></jsp:include>
    <section class="home-section">
    <jsp:include page="topbar.jsp"></jsp:include>
        <div class="container">
            <div class="regbox box">
              
                <h1>Register Staff</h1>
                <form action="Staff" method="post">
                   <p>StaffName</p>
                   <input type="text" placeholder="name" name="name" required>
                   <input type="hidden" placeholder="name" name="category" required>
                   <p>Address</p>
                   <input type="text" placeholder="name" name="address" required>
                   
                   <p>Phone Number</p>
                   <input type="text" placeholder="phone number" name="phone" required>
                   
                   <input type="submit" value="Register">
                  
                </form>
</div>
</div>
</section>
 <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>
</body>
</html>