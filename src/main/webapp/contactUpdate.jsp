<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>

    <title>Update Status</title>

        <meta charset="ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="./CSS/style1.css">
        
        <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0"> 

    </head>
    <body>


        <% String id=request.getParameter("id"); String name=request.getParameter("name"); String
        email=request.getParameter("email"); String phone=request.getParameter("phone");String message=request.getParameter("message");String reply=request.getParameter("reply"); %>



        <div class="container contact-form" id="div1">

            <form action="updateContact" method="post">
                <h3>Update Status</h3>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="">Id</label>
                            <input type="text" class="form-control" id="" placeholder="id" name="id"
                                value="<%=id %>" readonly>
                        </div>

                        <div class="form-group">
                            <label for="">Name</label>
                            <input type="text" class="form-control" placeholder="Name" name="name"
                                value="<%=name%>" readonly>
                        </div>

                        <div class="form-group">
                            <label for="">Email</label>
                            <input type="text" class="form-control" placeholder="email" name="email"
                                value="<%=email%>" readonly>
                        </div>

                        <div class="form-group">
                            <label for="">Phone</label>
                            <input type="text" class="form-control" id="" placeholder="phone" name="phone"
                            value="<%=phone%>" readonly>
                        </div>

                        <div class="form-group">
                            <label for="">Message</label>
                            <input type="text" class="form-control" id="" placeholder="message" name="message"
                            value="<%=message%>" readonly>
                        </div>

                        <div class="form-group">
                            <label for="">Status</label>
                            <input type="text" class="form-control" id="" placeholder="Not Replied" name="reply"
                            value="<%=reply%>">
                        </div>


                        <div class="mt-5">
                            <center>
                                <button type="submit" class="btn btn-success col-md-4 ">Submit</button>
                            </center>
                        </div>
                    </div>
                </div>

            </form>
        </div>



    </body>
</html>