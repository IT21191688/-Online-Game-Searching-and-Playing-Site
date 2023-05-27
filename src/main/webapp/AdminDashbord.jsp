<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en" dir="ltr">

    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="./CSS/style.css">
        <title>Dashboard</title>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>
        <div class="sidebar">
            <div class="logo-details">
                <a href="index.php">
                    <i class='bx bxl-unsplash'></i>
                </a>
                <span class="logo_name">Alpha Gaming DashBoard</span>
            </div>
            <ul class="nav-links">
                <li>
                    <a href="./gameAdinistrator.jsp" class="active">
                        <i class='bx bx-user'></i>
                        <span class="links_name">Manage Games</span>
                    </a>
                </li>
                <li>
                    <a href="./HRMDeatails.jsp">
                        <i class='bx bx-book'></i>
                        <span class="links_name">Manage CV Data</span>
                    </a>
                </li>
                <li>
                    <a href="./contactAdmin.jsp">
                        <i class='bx bx-book-bookmark'></i>
                        <span class="links_name">Inquiry</span>
                    </a>
                </li>
                <li class="log_out">
                     <a href="javascript:go()">
                        <i class='bx bx-log-out'></i>
                        <span class="links_name">Log out</span>
                    </a>
                </li>
            </ul>
        </div>
        <section class="home-section">
            <nav>
                <div class="sidebar-button">
                    <i class='bx bx-menu sidebarBtn'></i>
                    <span class="dashboard">Alpha Gaming</span>
                </div>
                <div class="search-box">
                    <input type="text" placeholder="Search...">
                    <i class='bx bx-search'></i>
                </div>
                <div class="profile-details">
                    <!--<img src="images/profile.jpg" alt="">-->

                    <!-- <i class='bx bx-chevron-down'></i> -->
                </div>
            </nav>

            <br><br><br><br>
            <div class="values">
                <div class="val-box">
                    <span class="las la-users"></span>
                    <div>
                        <h3>Manage Games</h3>
                        <a href="./gameAdinistrator.jsp">View</a>
                    </div>
                </div>

                <div class="val-box">
                    <span class="las la-clipboard"></span>
                    <div>
                        <h3>Manage CV Data</h3>
                        <a href="./HRMDeatails.jsp">View</a>
                    </div>
                </div>
                <div class="val-box">
                    <span class="las la-wallet"></span>
                    <div>
                        <h3>Inquiry</h3>
                        <a href="./contactAdmin.jsp">View</a>
                    </div>
                </div>


            </div>


            <script>

                let sidebar = document.querySelector(".sidebar");
                let sidebarBtn = document.querySelector(".sidebarBtn");
                sidebarBtn.onclick = function () {
                    sidebar.classList.toggle("active");
                    if (sidebar.classList.contains("active")) {
                        sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
                    } else
                        sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
                }
                
                
                function go() {
                	window.location.replace("logout.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
                	self.close()
                	}

            </script>

    </body>

    </html>