<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="./CSS/useraccountCSS.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
body {
  background-image: url('https://th.bing.com/th/id/R.e1864c14dbb1fdcf25cfca9e2e8ca78c?rik=dBzQQ9u8e4cvNw&pid=ImgRaw&r=0');
  background-repeat: no-repeat;
 

}

h2 {
  text-align: center;
  font-style: oblique;
  font-size: 50px;
}

table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
  font-size: 28px;
  font-style: oblique;
  font-weight: bold;
  table-align: center:
 
  
}


td {
  height: 50px;
  vertical-align: bottom;
}
table {
 
  border-collapse: collapse;
  width: 50%;
  
}

th, td {
  padding: 15px;
}

table {
  border-collapse: collapse;
  width: 50%;
}

th, td {
  text-align: left;
  padding: 8px;
}
table.center {
  margin-left: auto; 
  margin-right: auto;
}

tr:nth-child(even){background-color:#008B8B;}

th {
  background-color: #04AA6D;
  color: white;
  }
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  font-style: oblique;
  margin: 20px 275px;
  transition-duration: 0.4s;
  cursor: pointer;
}


.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
 
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}
.button1 {border-radius: 12px;}
.button2 {border-radius: 12px;}



</style>

</head>
<body>




	<c:forEach var="customer" items="${listdetails}">

		<c:set var="id" value="${customer.id}" />
		<c:set var="name" value="${customer.name}" />
		<c:set var="email" value="${customer.email}" />
		<c:set var="phone" value="${customer.phone}" />
		<c:set var="userName" value="${customer.userName}" />
		<c:set var="password" value="${customer.password}" />
	
		

		<div class="detailsTable">
		
		

<h2>Hello  ${customer.name} </h2>
			<table class="center" border="1">
				<tr>
					<td>ID</td>
					<td>${customer.id}</td>
				</tr>
				<tr>
					<td>Name</td>
					<td>${customer.name}</td>
				</tr>
				<tr>
					<td>Email</td>
					<td>${customer.email}</td>
				</tr>
				<tr>
					<td>Phone</td>
					<td>${customer.phone}</td>
				</tr>
				<tr>
					<td>User Name</td>
					<td>${customer.userName}</td>
				</tr>
				<tr>
					<td>Password</td>
					<td>${customer.password}</td>
				</tr>
				


			</table>

		</div>


	</c:forEach>

	<c:url value="updateCustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="userName" value="${userName}" />
		<c:param name="password" value="${password}" />
		<c:param name="role" value="${role}" />
	</c:url>

	<a href="${cusupdate}"> <input type="button" class= "button button1" name="update" 
		value="Update Data">
	</a>

	<c:url value="deleteCustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="userName" value="${userName}" />
		<c:param name="password" value="${password}" />
		<c:param name="role" value="${role}" />
		

	</c:url>
	<a href="${cusdelete}"><input type="button"  class= "button button2" name="delete"
		value="Delete Account"></a>




</body>
</html>