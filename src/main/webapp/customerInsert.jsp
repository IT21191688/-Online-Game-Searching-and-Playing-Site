<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="./CSS/main.css">
<link rel="stylesheet" href="./CSS/signup.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="wrapper">
    <form class="form" action="insertcus" method="post">
      <div class="pageTitle title">Sign Up </div>
      <div class="secondaryTitle title">Please fill this form to sign up.</div>

      
      <input type="text" name="name" class="name formEntry" placeholder="Name" requird>
       <input type="text" name="email" class="name formEntry" placeholder="Email" requird>
      <input type="text" name="tp" class="name formEntry" placeholder="Phone"requird>
       <input type="text" name="userName" class="name formEntry" placeholder="User Name" requird>
       <input type="password" name="password" class="name formEntry" placeholder="Password" requird>
       <input type="text" name="role"class="name formEntry" placeholder="Role" requird>
                
      <input type="checkbox" class="termsConditions" value="Term">
      <label style="color: grey" for="terms"> I Accept the <span style="color: #0e3721">Terms of Use</span> & <span style="color: #0e3721">Privacy Policy</span>.</label><br>
      
    <button class="submit formEntry" onclick="thanks()"><input type="submit" name="submit" value="Create Account" class="submitBtn"></button>
       
    </form>
  </div>
  <script src="app.js"></script>

</body>
</html>