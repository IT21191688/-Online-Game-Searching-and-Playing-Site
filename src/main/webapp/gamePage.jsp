<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Games</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
                crossorigin="anonymous">
            <link rel="stylesheet" href="./CSS/gamePage.css">



        </head>

        <body>

            <jsp:include page="header.jsp" />


            <div id="intro" class="bg-image vh-100 shadow-1-strong">
                <div class="topic">
                    <center>
                        <h1>Games</h1>
                    </center>
                    <h5>You can download and play it.</h5>
                </div>

                <!-- 
                <video style="width: 100%;height:auto;" playsinline autoplay muted loop>
                    <source class="h-100" src="vedio/gameHome.mp4" type="video/mp4" />
                </video>
                - -->

                <video style=" margin-top: 20.59px; width:100%;
        !important;" playsinline autoplay muted loop>
                    <source class="h-100" src="vedio/gameHome.mp4" type="video/mp4" />
                            
                </video>

            </div>
            <br><br><br><br><br><br><br><br><br><br>
            <br><br><br>

            <c:forEach var="games" items="${listgames}">
                <c:set var="id" value="${games.id}" />
                <c:set var="name" value="${games.name}" />
                <c:set var="discription" value="${games.discription}" />
                <c:set var="image" value="${games.image}" />
                <c:set var="link" value="${games.link}" />


                <center>


                    <div class="card mb-2" style="width:80%;">
                        <a href="${games.link}" class="cardA">
                            <img src="${games.image}" class="card-img-top" alt="s" style="height:300px;">
                            <div class="card-body cardBody">
                                <h1 class="card-text">${games.name}</h1>
                                <p class="card-text cardPara">
                                    ${games.discription}
                                </p>
                            </div>
                        </a>
                    </div>



                </center>
                <br>





            </c:forEach>

            <jsp:include page="footer.jsp" />


            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
                crossorigin="anonymous"></script>
        </body>

        </html>