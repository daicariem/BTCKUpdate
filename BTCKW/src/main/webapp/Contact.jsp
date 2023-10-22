<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        /* Style cho phần container */
        .contact-container {
            padding: 128px 16px;
            background-color: #f2f2f2;
            text-align: center;
        }

        /* Style cho tiêu đề "CONTACT" */
        .contact-header {
            font-size: 24px;
        }

        /* Style cho phần "Let's get in touch. Send us a message" */
        .contact-subheader {
            font-size: 16px;
        }

        /* Style cho biểu tượng vị trí, Phone, Gmail */
        .contact-icons {
            text-align: left;
        }

        .contact-icons i {
            font-size: 24px;
            margin-right: 10px;
        }

        /* Style cho form */
        .contact-form {
            margin-top: 48px;
        }

        .contact-form input[type="text"],
        .contact-form input[type="email"],
        .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        /* Style cho nút Send Message và Home */
        .contact-buttons {
            display: flex;
            justify-content: space-between;
            align-items: center; /* Căn giữa theo chiều dọc */
            margin-top: 20px;
            font-size: 18px;
        }

        .contact-buttons a, .contact-buttons button {
            background-color: #000;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none; /* Loại bỏ gạch chân mặc định cho liên kết */
            display: flex;
            align-items: center; /* Căn giữa theo chiều dọc */
        }

        /* Tạo khoảng cách giữa hai nút */
        .contact-buttons button:first-child {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="contact-container" id="contact">
        <h3 class="contact-header">CONTACT</h3>
        <p class="contact-subheader">Let's get in touch. Send us a message:</p>
        <div class="contact-icons">
            <p><i class="fas fa-map-marker-alt"></i> VIETNAM, VN</p>
            <p><i class="fas fa-phone"></i> Phone: +84 986 96 0764</p>
            <p><i class="fas fa-envelope"></i> Email: truongvuongn@mail.com</p>
        </div>
        <div class="contact-form">
            <form action="" target="">
                <p><input type="text" placeholder="Name" required name="Name"></p>
                <p><input type="text" placeholder="Email" required name="Email"></p>
                <p><input type="text" placeholder="Subject" required name="Subject"></p>
                <p><input type="text" placeholder="Message" required name="Message"></p>
                <div class="contact-buttons">
                    <button type="submit"><i class="fas fa-paper-plane"></i> SEND MESSAGE</button>
                    
                </div>
            </form>
        </div>
    </div>
</body>
</html>