<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link href="./CSS/aluthCSS.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>

<%
       String id=request.getParameter("id");
       String name=request.getParameter("name");
       String email=request.getParameter("email");
       String phone=request.getParameter("phone");
       String userName=request.getParameter("userName");
       String password=request.getParameter("password");
       String role=request.getParameter("role");
%>

	<!--<form action="update" method="post">
	     
	     Customer ID:<input type="text" name="id" value="<%=id%>"readonly><br>
	     Name:<input type="text" name="name" value="<%=name%>"><br>
	     Email:<input type="text" name="email" value="<%=email%>"><br>
	     Phone Number:<input type="text" name="phone" value="<%=phone%>"><br>
	     User Name:<input type="text" name="userName" value="<%=userName%>"><br>
	     Password:<input type="text" name="password" value="<%=password%>"><br>
	     Role:<input type="text" name="role" value="<%=role%>"><br>
	     
	     <input type="submit" value="submit" name="submit">
	     <input type="submit" value="Login" name="submit" id="logButton">
	     
	    </form>-->
	    
	    <!-- Body of Form starts -->
<div class="container">
    <form action="update" method="post" autocomplete="on">
      <!--First name-->
          <div class="box">
        <label for="id" class="fl fontLabel"> Id : </label>
              <div class="new iconBox">
          <i class="fa fa-user" aria-hidden="true"></i>
        </div>
              <div class="fr">
                      <input type="text" name="id" value="<%=id%>" class="textBox" autofocus="on" required>
              </div>
              <div class="clr"></div>
          </div>
          <!--First name-->


      <!--Second name-->
          <div class="box">
        <label for="name" class="fl fontLabel"> Name: </label>
              <div class="fl iconBox"><i class="fa fa-user" aria-hidden="true"></i></div>
              <div class="fr">
                      <input type="text" name="name" value="<%=name%>" class="textBox">
              </div>
              <div class="clr"></div>
          </div>
          <!--Second name-->


          <!---Phone No.------>
          <div class="box">
        <label for="phoneNumber" class="fl fontLabel"> Phone No.: </label>
              <div class="fl iconBox"><i class="fa fa-phone-square" aria-hidden="true"></i></div>
              <div class="fr">
                      <input type="text" name="phoneNumber" value="<%=phone%>" class="textBox">
              </div>
              <div class="clr"></div>
          </div>
          <!---Phone No.---->


          <!---Email ID---->
          <div class="box">
        <label for="email" class="fl fontLabel"> Email : </label>
              <div class="fl iconBox"><i class="fa fa-envelope" aria-hidden="true"></i></div>
              <div class="fr">
                      <input type="text" name="email" value="<%=email%>" class="textBox">
              </div>
              <div class="clr"></div>
          </div>
          <!--Email ID----->


          <!---Password------>
          <div class="box">
        <label for="userName" class="fl fontLabel"> User Name : </label>
              <div class="fl iconBox"><i class="fa fa-key" aria-hidden="true"></i></div>
              <div class="fr">
                      <input type="text" name="userName" value="<%=userName%>" class="textBox">
              </div>
              <div class="clr"></div>
          </div>
          <!---Password---->

       
          <!---Role------>
          <div class="box">
        <label for="role" class="fl fontLabel"> Role : </label>
              <div class="fl iconBox"><i class="fa fa-key" aria-hidden="true"></i></div>
              <div class="fr">
                      <input type="text" name="role" value="<%=role%>" class="textBox">
              </div>
              <div class="clr"></div>
          </div>
          <!---Role---->



          <!---Submit Button------>
          <div class="box" style="background: #2d3e3f">
                  <input type="submit" class= "button" name="submit" value="update">
          </div>
          <!---Submit Button----->
    </form>
</div>
<!--Body of Form ends--->
	    
	    




</body>
</html>