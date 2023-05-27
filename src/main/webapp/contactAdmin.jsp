<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Inquary Admin</title>
    <link rel="stylesheet" href="./CSS/style2.css">
    <link rel="stylesheet" href="./CSS/style4.css">
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
  
  
    <div class="btnGroup">
      <form action="Contactread" method="post" class="mt-5"><input type="submit" value="Show Inquries!"
      class="btn">
      </form>
    </div>
    

    <div id="ser">
    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
    </div>
    
    

    <div class="page-content page-container" id="page-content">
      <div class="padding">
        <div class="row container d-flex justify-content-center">

          <div class="col-lg-8 grid-margin stretch-card">
            <div class="card" id="card1">
              <div class="card-body">
                
                <div class="table-responsive">
                  <table class="table" id="myTable">
                    <thead>
                      <tr class="tr">
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Message</th>
                        <th scope="col">Status</th>

                        <th scope="col">Update</th>
                        <th scope="col">Delete</th>
                      </tr>
                    </thead>



                    <c:forEach var="Contact" items="${listContact}">
                      <c:set var="id" value="${Contact.id}" />
                      <c:set var="name" value="${Contact.name}" />
                      <c:set var="email" value="${Contact.email}" />
                      <c:set var="phone" value="${Contact.phone}" />
                      <c:set var="message" value="${Contact.message}" />
                      <c:set var="reply" value="${Contact.reply}" />



                      <tbody>
                        <tr>
                          <th scope="row">${Contact.id}</th>
                          <td>${Contact.name}</td>
                          <td>${Contact.email}</td>
                          <td>${Contact.phone}</td>
                          <td>${Contact.message}</td>
                          <td>${Contact.reply}</td>



                          <!-- update -->
                          <c:url value="contactUpdate.jsp" var="contactUpdate">
                              <c:param name="id" value="${Contact.id}" />
                              <c:param name="name" value="${Contact.name}" />
                              <c:param name="email" value="${Contact.email}" />
                              <c:param name="phone" value="${Contact.phone}" />
                              <c:param name="message" value="${Contact.message}" />
                              <c:param name="reply" value="${Contact.reply}" />
                          </c:url>

                          <td><button class="updateBtn"><a href="${contactUpdate}">Update</a></button></td>
                          <td>
                            <form action="deleteContact" method="post"><input type="hidden" name="deleteId" value="${Contact.id}"><input type="submit" value="Delete" class="deleteBtn">
                            </form>
                          </td>

                        </tr>
                      </tbody>
                    </c:forEach>
                  </table>
                  
                </div>
                
              </div>
            </div>
          </div>
        </div>
      </div>
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
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
    
  </body>
</html>

