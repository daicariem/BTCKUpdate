<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .signup-link {
            text-align: center;
            margin-top: 20px;
        }

        .signup-link a {
            text-decoration: underline;
        }

        .form-group {
            width: 100%;
            margin-bottom: 20px;
            position: relative;
        }
        
        .form-button {
         width: 20%;
            margin-bottom: 20px;
            position: relative;
        }

        .form-group label {
            font-weight: bold;
            display: block;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding-left: 50px;
        }

        .form-group i {
            font-size: 20px;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            left: 15px;
        }

        .form-group input[type="checkbox"] {
            width: auto;
        }

        .remember-me {
            text-align: left;
            margin-bottom: 20px;
        }

        .form-submit {
            background: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .social-login {
            margin-top: 20px;
        }

        .social-login a {
            text-decoration: none;
            color: #007bff;
            margin-right: 10px;
            font-size: 24px;
        }

        /* Style for the left image */
        .left-image {
            width: 30%;
            padding: 20px;
        }

        .left-image img {
            max-width: 100%;
            height: auto;
            display: block;
        }

        /* Style for the right content */
        .right-content {
            width: 70%;
            padding: 20px;
        }
        
         .form-group label i {
            font-size: 16px;
            width: 16px;
            height: 16px;
            display: inline-block;
            margin-right: 5px;
    </style>
</head>
<body>
    <div class="container">
        <div class="left-image">
            <img src="https://img.freepik.com/free-vector/man-sitting-desk-unlocking-computer-computer-settings-login-flat-illustration_74855-20645.jpg" alt="Login Image">
        </div>
        <div class ="right-content">
        
            <h2>Sign Up</h2>
            <div style=" color: red;">
  						${mess}
			</div>
            <form method="post" action="login" id="login-form">
                <div class="form-group">
                    <label for="username"><i class="fas fa-user"></i> Your Name</label>
                    <input type="text" name="username" id="username" placeholder="Your Name" />
                </div>
                <div class="form-group">
                    <label for="password"><i class="fas fa-lock"></i> Password</label>
                    <input type="password" name="password" id="password" placeholder="Password" />
                </div>
                <div class="remember-me">
                    <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                    <label for="remember-me">Remember me</label>
                </div>
                <div class="form-button">
                    <input type="submit" name="signin" id="signin" class="form-submit" value="Log in" />
                </div>
            </form>
            <div class="social-login">
                <span>Or login with</span>
                <a href="#"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-google"></i></a>
            </div>
            <div class="signup-link">
                <a href="Register.jsp">Create an account</a>
            </div>
        </div>
    </div>
</body>
</html>
