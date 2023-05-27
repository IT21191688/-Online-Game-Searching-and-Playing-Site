<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Game Data Update</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="./CSS/gameDataUpdate.css">
    </head>

    <body>
    
    <jsp:include page="header.jsp" />
    <br><br><br>


        <% String id=request.getParameter("gameId"); String name=request.getParameter("gameName"); String
            discription=request.getParameter("discription"); String link=request.getParameter("gameLink"); %>

            <div>
                <div class="">
                    <div class="d-flex justify-content-center mt-5">
                        <h4 class="updateHeader">Update game details</h4>
                    </div>

                    <div class="d-flex justify-content-center mt-3 ">
                        <form class="col-md-6 border border-primary rounded p-4 updateForm" action="up" method="post">
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="">Game id</label>
                                    <input type="text" class="form-control" id="" placeholder="Game id" name="gameId"
                                        value="<%=id %>" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="">Game Name</label>
                                    <input type="text" class="form-control" placeholder="Game Name" name="gameName"
                                        value="<%=name%>">
                                </div>
                                <div class="form-group">
                                    <label for="">Discription</label>
                                    <input type="text" class="form-control" placeholder="Discription" name="discription"
                                        value="<%=discription%>">
                                </div>
                            </div>

                            <!--  <div class="form-group">
                            <div class="mb-3">
                                <label for="formFileSm" class="form-label">Game Display image</label>
                                <input class="form-control form-control-sm" id="formFileSm" type="file" name="imageName" >
                            </div>
                        </div>
                        -->
                            <div class="form-group">
                                <label for="">Game Link</label>
                                <input type="text" class="form-control" id="" placeholder="Game Link" name="gameLink"
                                    value="<%=link%>">
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
            <br><br><br>
            
            
            <jsp:include page="footer.jsp" />




            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
                crossorigin="anonymous"></script>
    </body>

    </html>