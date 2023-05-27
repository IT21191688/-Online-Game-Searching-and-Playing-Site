<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>HRMDeatails</title>
            <link rel="stylesheet" href="./CSS/HRMDetails.css">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
                integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
                crossorigin="anonymous">


        </head>

        <body>


            <div class="btnGroup btn-group">
                <form action="HRMread" method="post" class="mt-5 showbtn"><input type="submit" value="show Details"
                        class="btn btn-success"></form>

            </div>


            <div>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Position</th>
                            <th scope="col">CVPath</th>
                            <th scope="col">Status</th>

                            <th scope="col">Update</th>
                            <th scope="col">Delete</th>
                        </tr>



                        <c:forEach var="cvUpload" items="${listHRMDetails}">
                            <c:set var="id" value="${cvUpload.id}" />
                            <c:set var="name" value="${cvUpload.name}" />
                            <c:set var="email" value="${cvUpload.email}" />
                            <c:set var="position" value="${cvUpload.position}" />
                            <c:set var="cvpath" value="${cvUpload.cvpath}" />
                            <c:set var="action" value="${cvUpload.action}" />



                    <tbody>
                        <tr class="row2">
                            <th scope="row">${cvUpload.id}</th>
                            <td>${cvUpload.name}</td>
                            <td>${cvUpload.email}</td>
                            <td>${cvUpload.position}</td>
                            <td>${cvUpload.cvpath}</td>
                            <td class="action">${cvUpload.action}</td>

                            <!-- update -->
                            <c:url value="cvUploadUpdate.jsp" var="cvUploadUpdate">
                                <c:param name="id" value="${cvUpload.id}" />
                                <c:param name="name" value="${cvUpload.name}" />
                                <c:param name="email" value="${cvUpload.email}" />
                                <c:param name="position" value="${cvUpload.position}" />
                                <c:param name="cvpath" value="${cvUpload.cvpath}" />
                                <c:param name="action" value="${cvUpload.action}" />
                            </c:url>

                            <td><button class="update"><a href="${cvUploadUpdate}">Update</a></button></td>
                            <td>
                                <form action="deletecvData" method="post"><input type="hidden" name="deleteId"
                                        value="${cvUpload.id}"><input type="submit" value="Delete" class="delete">
                                </form>
                            </td>

                        </tr>

            </div>
            </c:forEach>

            <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
                crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
                crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
                crossorigin="anonymous"></script>

        </body>

        </html>