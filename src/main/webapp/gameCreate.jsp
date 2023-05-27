<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <title>Game Create</title>

    <link rel="stylesheet" href="./CSS/gameCreate.css">
    <link rel="stylesheet" href="./CSS/main.css">


  </head>

  <body>
    <jsp:include page="header.jsp" />

    <br><br><br><br><br>


    <div class="">
      <div class="">
        <div class="d-flex justify-content-center">
          <h3 class="text-primary h2">Enter Game Details</h3>
        </div>

        <div class="d-flex justify-content-center mt-3">
          <form class="col-md-6 border border-primary rounded p-4 createForm" action="insert" method="post"
            enctype="multipart/form-data">
            <div class="form-row">
              <div class="form-group">
                <label for="" class="h4">Game Name</label>
                <input type="text" class="form-control" id="" placeholder="Game Name" name="gameName" required>
              </div>
              <div class="form-group">
                <label for="" class="h4">Discription</label>
                <input type="text" class="form-control" id="" placeholder="Discription" name="discription" required>
              </div>
            </div>

            <div class="form-group">
              <div class="mb-3">
                <label for="formFileSm" class="form-label h4">Game Display image</label>
                <input class="form-control form-control-sm" id="formFileSm" type="file" name="gameImage" required>
              </div>
            </div>
            <div class="form-group">
              <label for="" class="h4">Game Link</label>
              <input type="text" class="form-control" id="" placeholder="Game Link" name="gameLink" required>
            </div>

            <div class="mt-5 h4">
              <center>
                <button type="submit" class="btn btn-outline-success col-md-4 ">Submit</button>
                <button type="reset" class="btn btn-outline-primary col-md-4 ">Reset</button>
              </center>
            </div>
          </form>
        </div>
      </div>

    </div>
    <br><br><br><br><br>


    <jsp:include page="footer.jsp" />





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
      crossorigin="anonymous"></script>
  </body>

  </html>