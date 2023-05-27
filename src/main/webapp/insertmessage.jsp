<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Inquiry</title>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<link rel="stylesheet" href="./CSS/style0.css">
		<link rel="stylesheet" href="./CSS/main.css">

		
	

	</head>
	<body>

		<jsp:include page="header.jsp"/>

		<video autoplay muted loop id="myVideo">
			<source src="./vid/video1.mp4" type="video/mp4">
		</video>
		<script>  
			function validateemail()  
			{  
				var x=document.myform.email.value;  
				var atposition=x.indexOf("@");  
				var dotposition=x.lastIndexOf(".");  
				if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
				alert("Please enter a valid e-mail address \n");  
				return false;  
				}  
			}   
		</script>
		<div class="content">
		<div class="container contact-form">
			

			<form name="myform" action="create" method="post" onsubmit="return validateemail()">
				<h3>Drop Us a Message</h3>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<input type="text" name="name" class="form-control" id="name" placeholder="Your Name *" value="" required/>
							
						</div>
						<div class="form-group">
							<input type="text" name="email" class="form-control" id="email" placeholder="Your Email *" value="" required/>
							
						</div>
						<div class="form-group">
							<input type="text" name="phone" class="form-control" id="phone" placeholder="Your Phone Number *" value="" pattern="[0-9]{10}" title="Should be 10 Numbers" required/>
							
						</div>

					</div>

					<div class="col-md-6">
						<div class="form-group">
							<textarea name="message" class="form-control" id="message" placeholder="Your Message *" style="width: 100%; height: 150px;" required></textarea>
								
						</div>
					</div>

					<br><br>

					<div class="col-md-12 ali">
						<div class="form-group">
							<input type="submit" name="submit" class="btnContact" value="Send Message" />
							
						</div>


						<div class="form-group">
							<input type="reset" name="reset" class="btnContact1" value="Reset" />
							
						</div>

					</div>
				
				</div>
				

			</form>
		
		</div>
		</div>

 <jsp:include page="footer.jsp" />
	</body>
</html>