<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Login Page</title>

        <style>
body {
    background-image: url('kU5RGs.jpg');
    background-size: cover;
    background-position: center;
    height: 100vh;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
}

.login-container {
    background-color: rgba(255, 255, 255, 0.8); 
    padding: 40px;
    border-radius: 50px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    max-width: 400px; 
    width: 100%;
}

.form-group {
    position: relative;
    margin-bottom: 2rem;
}
.form-label {
    position: absolute;
    top: 10px;
    left: 20px;
    transition: all 0.3s ease;
    pointer-events: none;
    color: #007bff;
    font-size: 12px;
}
.form-group.active .form-label {
            top: -14px;
            left: 10px;
            font-size: 10px;
            color: #007bff;}

        .form-check-input {
            margin-top: 0.25rem;
        }

        .social-buttons .btn-link {
            color: #007bff;
        }
    </style>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" crossorigin="anonymous">

</head>
<body>

<div class="login-container">
<h1 style="color: #007bff;text-align:center">User Login</h1>
	<form action="login" method="post">
		<div class="form-group">
                <input type="username" id="username" name="username" class="form-control rounded-pill" required />
                <label class="form-label" for="username">Username</label>
            </div>

            <div class="form-group">
                <input type="password" id="password" name="password" class="form-control rounded-pill" required />
                <label class="form-label" for="form2Example2">Password</label>
            </div>
		
		<div class="row mb-4">
                <div class="col d-flex justify-content-center">
                 
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                        <label class="form-check-label" for="form"> Remember me </label>
                    </div>
                </div>

                <div class="col">
                  
                    <a href="#">Forgot password?</a>
                </div>
            </div>
		
		<input type="submit" name="submit" class="btn btn-primary btn-block rounded-pill mb-4">
		
		<div class="text-center">
                <p>Not a member? <a href="userinsert.jsp">Register</a></p>
                <p>or sign up with:</p>

                <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-facebook"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-google"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-twitter"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-github"></i>
                </button>
            </div>
		
	</form>
</div><br><br><br>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        const UsernameInput = document.getElementById('username');
        const passwordInput = document.getElementById('password');

        UsernameInput.addEventListener('focus', () => {
            UsernameInput.parentElement.classList.add('active');
        });

        passwordInput.addEventListener('focus', () => {
            passwordInput.parentElement.classList.add('active');
        });

        UsernameInput.addEventListener('blur', () => {
            if (UsernameInput.value === '') {
                UsernameInput.parentElement.classList.remove('active');
            }
        });

        passwordInput.addEventListener('blur', () => {
            if (passwordInput.value === '') {
                passwordInput.parentElement.classList.remove('active');
            }
        });
    </script>


</body>
</html>