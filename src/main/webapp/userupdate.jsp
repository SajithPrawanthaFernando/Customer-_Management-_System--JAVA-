<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update account</title>
 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
		body {
            background-image: url('kU5RGs.jpg');
            background-size: cover;
            background-position: center;
            justify-content: center;
            align-items: center;
            color: #007bff;
        }
        
        .navbar {
            background-color:  rgba(0, 0, 0, 0.7);
        }

        .footer {
            background-color: rgba(0, 0, 0, 0.7); 
            color: white; 
            padding: 10px;
            padding-top: 25px;
        }
        

        .form-container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 40px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            width:40%;
            margin-bottom: 10px;
        }
        
         .btn-primary { 
             border-radius: 20px;
        }
        
        
	</style>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	
	
	<nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Event Management System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="registersuccess.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Events</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Create Event</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Sign In</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="userinsert.jsp">Sign Up</a>
                </li>
            </ul>
        </div>
    </nav><br><br><br>
	
	<div class="container form-container">
	<h1 style="text-align:center;">Update Profile</h1>
    <form action="update" method="post">
        <div class="form-group">
            <label for="userid">Customer ID</label>
            <input type="text" class="form-control rounded-pill" id="userid" name="userid" value="<%= id %>" readonly>
        </div>
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control rounded-pill" id="name" name="name" value="<%= name %>">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control rounded-pill" id="email" name="email" value="<%= email %>">
        </div>
        <div class="form-group">
            <label for="phone">Phone number</label>
            <input type="text" class="form-control rounded-pill" id="phone" name="phone" value="<%= phone %>">
        </div>
        <div class="form-group">
            <label for="uname">User name</label>
            <input type="text" class="form-control rounded-pill" id="uname" name="uname" value="<%= userName %>">
        </div>
        <div class="form-group">
            <label for="pass">Password</label>
            <input type="password" class="form-control rounded-pill" id="pass" name="pass" value="<%= password %>">
        </div>
        <button type="submit" class="btn btn-primary" name="submit">Update My Data</button>
       
    </form>
</div>

<br><br><br>

    <footer class="footer text-center">
        <p>&copy; 2023 Event Management System. All rights reserved.</p>
    </footer>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>