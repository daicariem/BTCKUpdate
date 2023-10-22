<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="styles.css">
<style>

 .fixed-menu {
        position: fixed; /* Đảm bảo rằng menu sẽ luôn ở vị trí hiện tại */
        top: 0;
        left: 0;
        right: 0;
        background-color: #333; /* Màu nền của menu */
        padding: 10px 20px;
        z-index: 1000;
    }
    /* Định dạng cho menu */
    .menu {
        width: 100%; /* Chiều rộng 100% */
        z-index: 1000; /* Đặt một z-index để đảm bảo menu hiển thị trên tất cả các phần khác của trang */
    
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #333; /* Màu nền menu */
        padding: 10px 20px;
    }

    /* Định dạng cho logo */
    .logo {
        font-family: 'Pacifico', cursive; /* Thay đổi kiểu chữ độc lạ */
        font-size: 24px;
        margin-right: auto; /* Đẩy logo sang góc trái */
        color: red;
    }

    /* Định dạng cho các mục menu */
    .menu-item {
        color: #fff; /* Màu chữ của các mục menu */
        margin-left: 20px; /* Thay đổi margin-left để các mục nằm bên phải và cách nhau một ít */
        display: flex;
        align-items: center;
    }

    /* Định dạng cho biểu tượng */
    .menu-item i {
        margin-right: 5px;
    }

    /* Định dạng cho hover (khi di chuột qua) */
    .menu-item:hover {
        text-decoration: underline;
    }

    .menu-item a {
        color: #fff;
        text-decoration: none;
    }
</style>

<script>
document.addEventListener('DOMContentLoaded', function () {
  const teamLink = document.querySelector('.menu-item a[href="team"]');
  const teamSection = document.getElementById('team');

  teamLink.addEventListener('click', function (e) {
    e.preventDefault(); // Ngăn chặn trình duyệt điều hướng đến trang "team"
    
    // Cuộn đến đoạn "Team" bằng cách sử dụng scrollIntoView
    teamSection.scrollIntoView({ behavior: 'smooth' });
  });
});
</script>

<script>
document.addEventListener('DOMContentLoaded', function () {
  const teamLink = document.querySelector('.menu-item a[href="contact"]');
  const teamSection = document.getElementById('contact');

  teamLink.addEventListener('click', function (e) {
    e.preventDefault(); 
    
    // Cuộn đến đoạn "contact" bằng cách sử dụng scrollIntoView
    teamSection.scrollIntoView({ behavior: 'smooth' });
  });
});
</script>

<script>
document.addEventListener('DOMContentLoaded', function () {
  const teamLink = document.querySelector('.menu-item a[href="about"]');
  const teamSection = document.getElementById('about');

  teamLink.addEventListener('click', function (e) {
    e.preventDefault(); 
    
    // Cuộn đến đoạn "about" bằng cách sử dụng scrollIntoView
    teamSection.scrollIntoView({ behavior: 'smooth' });
  });
});
</script>

<script>
    window.addEventListener("scroll", function () {
        const menu = document.querySelector('.menu');
        const scrollTop = window.scrollY;

        // Khoảng cố định mà bạn muốn để menu được ghim
        const scrollThreshold = 100;

        if (scrollTop > scrollThreshold) {
            // Nếu vị trí cuộn lớn hơn khoảng cố định, thêm lớp "fixed-menu" vào menu
            menu.classList.add("fixed-menu");
        } else {
            // Ngược lại, loại bỏ lớp "fixed-menu"
            menu.classList.remove("fixed-menu");
        }
    });
</script>
<meta charset="UTF-8">
<title>Menu Page</title>
</head>
<body>
<div class="menu">
    <div class="logo">EYEWEAR STORE</div>
    <div class="menu-item"><i class="fas fa-home"></i><a href="home">HOME</a></div>
    <div class ="menu-item"><i class="fas fa-info-circle"></i><a href="about">ABOUT</a></div>
    <div class="menu-item"><i class="fas fa-envelope"></i><a href="contact">CONTACT</a></div>
    <div class="menu-item"><i class="fas fa-shopping-cart"></i><a href="product">PRODUCT</a></div>
    <div class="menu-item"><i class="fas fa-users"></i><a href="team">TEAM</a></div>
    <div class="menu-item"><i class="fas fa-cart-arrow-down"></i><a href="cart">CART</a></div>
</div>
</body>
</html>