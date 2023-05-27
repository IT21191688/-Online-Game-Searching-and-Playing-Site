<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>cv form</title>
        <link rel="stylesheet" href="./CSS/cvUploadpage.css">
        <link rel="stylesheet" href="./css/main.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    </head>

    <body>
        <jsp:include page="header.jsp" />

        <Section>
            <div id="intro" class="bg-image vh-100 shadow-1-strong workus vedio1 ">


                <video style=" margin-top: -100.59px; width:100%;
        !important;" playsinline autoplay muted loop>
                    <source class="h-100" src="vedio/San_workus (2)_1.mp4" type="video/mp4" />
                </video>
                <div>
                    <br><br>

                    <center>
                        <br>
                        <h1 style=" font-family: 'Times New Roman', Times, serif;">Open Position</h1><br>
                        <h5>We have high aspirations and challenging goals that are made achievable by remarkable people
                            like you.<br> We're continuously looking for intelligent people to join our team.<br>
                            Miniclippers have the opportunity to learn, advance, inspire others, create, provide
                            assistance, mentorship, and have fun.<br> Check out our chances right away. You could do
                            best with one.</h>
                    </center>

                </div>
            </div>
        </Section>
       


        <div class="d-flex justify-content-center mt-3">
            <form class="col-md-6 border border-primary rounded p-4 createForm  form" action="insertcvData"
                method="post" onsubmit="return validateemail()" enctype="multipart/form-data" >
                <div class="form-row">

                    <div class="form-group">
                        <br>

                        <input type="text" class="form-control" id="" placeholder="Your Name" name="name"required>
                    </div>
                    <div class="form-group">
                        <br><br>
                        <input type="text" class="form-control" id="" placeholder="Email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="example@EXAMPLE.EXAMPLE" required>
                    </div>

                    <div class="form-group">
                        <br>
                        <label for="" class="h7"><br>
                            <h7>Software Developer/Senior Software Developer (C++)/
                                Cloud Infrastructure Engineer/Analytics Manager - Technical/Data Engineer
                                Manager/Computer Graphic Artist</h7>
                        </label>
                        <br>
                        <input type="text" class="form-control" id="" placeholder="Apply Your Possition"
                            name="position" required>
                    </div>

                </div><br><br>




                <div class="form-group">
                    <div class="mb-3">

                        <input class="form-control form-control-sm" id="formFileSm" type="file"
                            placeholder="Upload your CV" name="cv" required>
                    </div>
                </div>



                <div class="mt-5 h4">
                    <center>
                        <button type="submit" class="btn btn-outline-warning btn-lg">Submit</button>
                        <button type="reset" class="btn btn-outline-primary btn-lg resetBtn">Reset &nbsp</button>
                    </center>
                </div>
            </form>
        </div>
        <jsp:include page="footer.jsp" />
        
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

    </body>

    </html>