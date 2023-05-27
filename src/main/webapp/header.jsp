<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./CSS/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheer">
  </head>

  <body>

    <!-- ======= Header ======= -->
    <header id="header" class="header d-flex align-items-center">
      <div class="container-fluid container-xl d-flex align-items-center justify-content-between">




        <% String username=request.getSession(false).getAttribute("username").toString(); System.out.println(username);
          %>

          <a href="home.jsp" class="logo d-flex align-items-center">
            <!-- Uncomment the line below if you also wish to use an image logo -->
            <!-- <img src="assets/img/logo.png" alt=""> -->
            <h1></h1><img src="siteImages/logo.png" alt="" style="width: 360%;">
          </a>

          <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
          <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
          <nav id="navbar" class="navbar">
            <ul>
              <li><a href="home.jsp">Home</a></li>
              <li><a href="AboutUs.jsp">About</a></li>

              <li><a href="projects.html">
                  <div class="">
                    <form action="gameLoad" method="post" class=""><input type="submit" value="GAMES" style="background: none;
background: transparent; border:none; color:white;"></form>
                  </div>
                </a></li>
              <li><a href="cvUploadpage.jsp">Careers</a></li>

              <li><a href="insertmessage.jsp">Inquiry</a></li>


              <li style="display:inline-block; "><a href="useraccount.jsp">
                  <center><img src="./siteImages/user.png" alt="" style="width:30px;height:30px;">
                    <form action="readData" method="post" class="mt-5" style=""><input type="submit"
                        value="<%=username%>" class="btn btn-success"
                        style="border:none;position: absolute; top:35px; margin-right:5px; ">
                  </center>
                  </form>
                </a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

              <li><a href="javascript:go()"><b>Logout</b></a></li>

            </ul>
          </nav><!-- .navbar -->

      </div>
    </header><!-- End Header -->


    <script>
      function go() {
        window.location.replace("logout.jsp", 'window', 'toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
        self.close()
      }
    </script>

  </body>

  </html>