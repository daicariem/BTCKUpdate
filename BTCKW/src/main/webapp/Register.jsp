<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .signup-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 800px; /* Điều chỉnh kích thước container */
        }

        .signup-container h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .input-container {
            margin: 10px 0;
            position: relative;
        }

        .input-container i {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #888;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="tel"] {
            width: 80%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
            font-size: 16px;
            padding-left: 30px;
        }

        .checkbox-container {
            text-align: left;
            margin-top: 10px;
        }

        .checkbox-container input[type="checkbox"] {
            margin-right: 5px;
        }

        button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .image-container {
            margin-top: 20px;
            text-align: center;
        }

        .image-container img {
            width: 100px; /* Điều chỉnh kích thước hình ảnh */
            height: auto;
            margin-bottom: 10px;
        }

    </style>
</head>
<body>
<div class="signup-container">

    <h1>Sign Up</h1>
    <form method="post" action="Register" id="Register-form">
    
        <div class="input-container">
            <i class="fas fa-user"></i>
            <input type="text" placeholder="Your Name" name="name" required>
        </div>
        
        <div class="input-container">
            <i class="fas fa-lock"></i>
            <input type="password" placeholder="Password" name="password" required>
        </div>
        <div class="input-container">
            <i class="fas fa-lock"></i>
            <input type="password" placeholder="Repeat Password" name="repeat-password" required>
        </div>
        
        
        <button type="submit">Register</button>
    </form>
    <div class="image-container">
        <img src="your-image.png" alt="Your Image">
    </div>
</div>
</body>
</html>
