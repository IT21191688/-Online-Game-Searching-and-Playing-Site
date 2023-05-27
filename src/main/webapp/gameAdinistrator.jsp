<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Game Administrator</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
                crossorigin="anonymous">
            <link rel="stylesheet" href="./CSS/gameAdministrator.css">

        </head>

        <body>
            <jsp:include page="header.jsp" />
            <br><br><br><br>
            <div class="containt">

                <center>
                    <div class="administratorH">
                        <h1>Game Details</h1>
                    </div>
                    <div id="ser">
                        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Game Name"
                            title="Type in a name">
                    </div>
                </center>


                <center>
                    <div class="btnGroup btn-group">
                        <form action="read" method="post" class="mt-5"><input type="submit" value="show Games"
                                class="btn btn-success"></form>&nbsp;&nbsp;&nbsp;
                        <button class="AddButton btn btn-primary mt-5"><a href="gameCreate.jsp">Add
                                Game</a></button>
                    </div>
                </center>

                <div>

                </div>

                <div>
                    <table class="table" id="myTable">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Game Name</th>
                                <th scope="col">Discription &nbsp;</th>
                                <th scope="col">Game Image</th>
                                <!-- <th scope="col">Game Link</th>-->
                                <th scope="col">Update</th>
                                <th scope="col">Delete</th>
                            </tr>



                            <c:forEach var="games" items="${listgames}">
                                <c:set var="id" value="${games.id}" />
                                <c:set var="name" value="${games.name}" />
                                <c:set var="discription" value="${games.discription}" />
                                <c:set var="image" value="${games.image}" />
                                <c:set var="link" value="${games.link}" />


                        <tbody>
                            <tr>
                                <th scope="row">${games.id}</th>
                                <td>${games.name}</td>
                                <td>${games.discription}</td>
                                <td>${games.image}</td>
                                <!--        <td>${games.link}</td>-->


                                <c:url value="gameDataUpdate.jsp" var="gameUpdate">
                                    <c:param name="gameId" value="${games.id}" />
                                    <c:param name="gameName" value="${games.name}" />
                                    <c:param name="discription" value="${games.discription}" />
                                    <c:param name="gameLink" value="${games.link}" />
                                </c:url>

                                <td><button class="updateBtn"><a href="${gameUpdate}">Update</a></button></td>
                                <td>
                                    <form action="delete" method="post"><input type="hidden" name="deleteId"
                                            value="${games.id}"><input type="submit" value="Delete" class="deleteBtn">
                                    </form>
                                </td>

                            </tr>

                </div>


                </c:forEach>

            </div>



            <script>
                function myFunction() {
                    var input, filter, table, tr, td, i, txtValue;
                    input = document.getElementById("myInput");
                    filter = input.value.toUpperCase();
                    table = document.getElementById("myTable");
                    tr = table.getElementsByTagName("tr");
                    for (i = 0; i < tr.length; i++) {
                        td = tr[i].getElementsByTagName("td")[0];
                        if (td) {
                            txtValue = td.textContent || td.innerText;
                            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                                tr[i].style.display = "";
                            } else {
                                tr[i].style.display = "none";
                            }
                        }
                    }

                }
            </script>



            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
                crossorigin="anonymous"></script>
        </body>

        </html>