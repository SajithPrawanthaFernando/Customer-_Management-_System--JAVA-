<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>User Profile</title>
	
	<style type="text/css">
        body {
            font-family: Hind SemiBold;
            font-size:20px;
            background-image: url('kU5RGs.jpg'); /* Change to your blue background image */
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            color:  #007bff;;
        }

        .profile-item {
            margin-bottom: 10px;
            padding: 22px 27px; /* Adjusted padding for smaller pills */
            border: 1px solid white;
            border-radius: 50px; /* Increased border-radius for more roundness */
            background-color: rgba(255, 255, 255, 0.8); /* Blended blue background */
            width: 100%; /* Set the width to 100% for left alignment */
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        .profile-label {
            font-weight: bold;
        }

       .btn-primary {
       
             background-color: #007bff;
             border-color: #007bff;
             border-radius: 20px;
             padding: 10px 15px;
             color: white; 
        }
    
       .btn-primary:hover {
             background-color: #0056b3;
             border-color: #0056b3;
             color: white;
        }

	</style>
</head>
<body>
        
	<div class="container">
	<h1 style="text-align:center;">User Profile</h1>
	<c:forEach var="user1" items="${userDetails}">
	
	<c:set var="id" value="${user1.id}"/>
	<c:set var="name" value="${user1.name}"/>
	<c:set var="email" value="${user1.email}"/>
	<c:set var="phone" value="${user1.phone}"/>
	<c:set var="username" value="${user1.userName}"/>
	<c:set var="password" value="${user1.password}"/>
	
	        <div class="profile-item">
                <span class="profile-label">User ID: </span>${user1.id}
            </div>
            <div class="profile-item">
                <span class="profile-label">Name: </span>${user1.name}
            </div>
            <div class="profile-item">
                <span class="profile-label">Email Address: </span>${user1.email}
            </div>
            <div class="profile-item">
                <span class="profile-label">Phone Number: </span>${user1.phone}
            </div>
            <div class="profile-item">
                <span class="profile-label">UserName: </span>${user1.userName}
            </div>
	
	</c:forEach>

	
		<c:url value="userupdate.jsp" var="userupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${userupdate}">
	<input type="button" class="btn btn-primary btn-block rounded-pill" name="update" value="Update My Data">
	</a>
	
	<c:url value="userdelete.jsp" var="userdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${userdelete}">
	<input type="button" class="btn btn-primary btn-block rounded-pill" name="delete" value="Delete My Account">
	</a>
	</div>
	
</body>
</html>