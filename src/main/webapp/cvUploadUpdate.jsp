<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
        <link rel="stylesheet" href="./CSS/cvUploadUpdate.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
            integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>

    <body>

        <% String id=request.getParameter("id"); String name=request.getParameter("name"); String
            email=request.getParameter("email"); String position=request.getParameter("position");String
            action=request.getParameter("action"); %>


            <div>
                <div class="">
                    <img src="./siteImages/logo.png" alt="" width="200" height="100" margin:right="100%"
                        style=padding-left:5%>
                    <hr>
                    <div class="d-flex justify-content-center mt-3">

                        <h3 class="updateHeader">Update CV details</h3>
                    </div>

                    <div class="d-flex justify-content-center mt-2  ">
                        <form class="col-md-6 border border-primary rounded p-4 formUpdate" action="updatecvData"
                            method="post">
                            <div class="form-row ">
                                <div class="form-group">
                                    <label for=""><b>Id</b></label>
                                    <input type="text" class="form-control" id="" placeholder="id" name="id"
                                        value="<%=id %>" readonly>
                                </div>
                                <div class="form-group">
                                    <label for=""><b>Name</b></label>
                                    <input type="text" class="form-control" placeholder="Name" name="name"
                                        value="<%=name%>" readonly>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for=""><b>Email</b></label>
                                <input type="text" class="form-control" placeholder="email" name="email"
                                    value="<%=email%>" readonly>
                            </div>

                            <div class="form-group">
                                <label for=""><b>Position</b></label>
                                <input type="text" class="form-control" id="" placeholder="position" name="position"
                                    value="<%=position%>" readonly>
                            </div>

                            <div class="form-group">
                                <label for=""><b>Status</b></label>
                                <input type="text" class="form-control" id="" placeholder="status" name="action"
                                    value="<%=action%>">
                            </div>

                            <div class="mt-5">
                                <center>
                                    <button type="submit" class="btn btn-success col-md-4 ">Submit</button>
                                    <button type="reset" class="btn btn-primary col-md-4 ">Reset</button>
                                </center>
                            </div>
                        </form>
                    </div>
                </div>

            </div>

    </body>

    </html>