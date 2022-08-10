<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Administrator Login</title>
  <link rel="stylesheet" href="styles.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="login-page">
  <div class="form">
  <div><h4>Administrator Login</h4></div>
    <form  method="POST" action="loginServlet" class="login-form">
      <input type="email" name="email" placeholder="email"/>
      <input type="password" name="password" placeholder="password"/>
      <input class="button" type="submit" value="Login"/>
    </form>
  </div>
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script>
  $('.message a').click(function(){
	   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
	});
  </script>

</body>
</html>