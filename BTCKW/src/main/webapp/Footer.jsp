<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
/* Định dạng cho footer */
footer {
    background-color: #333; /* Màu nền footer */
    color: #fff; /* Màu chữ footer */
    padding: 20px;
    text-align: center;
}

/* Định dạng cho nút "lên đầu trang" */
.to-top-button {
    background-color: #fff; /* Màu nền nút */
    color: #000; /* Màu chữ nút */
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    text-decoration: none;
    cursor: pointer;
    font-weight: bold; /* In đậm chữ nút */
}

.to-top-button i {
    margin-right: 5px;
}

/* Định dạng cho biểu tượng "lên đầu trang" khi hover */
.to-top-button:hover {
    background-color: #ccc; /* Màu nền nút khi hover */
}

/* Định dạng cho biểu tượng mạng xã hội */
.social-icons {
    margin-top: 20px;
}

.social-icons a {
    color: #fff; /* Màu biểu tượng */
    font-size: 24px;
    margin: 0 2px;
    text-decoration: none;
}

/* Định dạng cho hover (khi di chuột qua) */
.social-icons a:hover {
    text-decoration: underline;
}
</style>
<meta charset="UTF-8">
<title>Footer Page</title>
</head>
<body>
	<footer>
    <div class="back-to-top">
        <a href="home" class="to-top-button">
            <i class="fas fa-chevron-up"></i> TO THE TOP
        </a>
    </div>
    <div class="social-icons">
        <a href="https://www.facebook.com/profile.php?id=100013378210076"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-snapchat"></i></a>
        <a href="#"><i class="fab fa-pinterest"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
    </div>
    POWER BY dzso1.mywayyy
    <br>
    Email: truongvuongn@gmail.com	
</footer>
</body>
</html>