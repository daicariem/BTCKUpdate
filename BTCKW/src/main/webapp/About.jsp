<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
/* ... Các styles khác ở đây ... */

.slideshow-title {
  text-align: center; /* Căn giữa tiêu đề */
  margin-top: 20px; /* Khoảng cách từ slideshow xuống tiêu đề */
}

.slideshow-title h2 {
   /* Màu chữ của tiêu đề */
  padding: 10px; /* Khoảng cách nội dung tiêu đề và khung */
  border-radius: 5px; /* Đổ viền bo góc cho tiêu đề */
}



</style>
<meta charset="UTF-8">
<title>About Page</title>
</head>
<body>
	<div style="background-color: #d2e0d1; padding: 64px; color: #fff;" id="about">
  <div style="max-width: 800px; margin: 0 auto;">
    <h1 style="text-align: center; font-size: 48px; margin-bottom: 64px;">About Our Eyewear Store</h1>
    <p>Our eyewear store is a place where style meets functionality. We've been providing top-quality eyeglasses and sunglasses to our customers for years. Our journey began in a small workshop where we had a vision of bringing fashionable eyewear to the world.</p>
    <p><strong>Meet Our Expert Opticians:</strong> Our team of experienced opticians is dedicated to helping you find the perfect pair of glasses.</p>
    <img src="https://img.freepik.com/free-vector/optical-shop-concept-illustration_114360-7286.jpg?size=626&ext=jpg&ga=GA1.1.1413502914.1696896000&semt=sph" style="width: 150px; border-radius: 50%; float: right; margin-left: 20px;" alt="Optician">
    <p>We take pride in our cozy and modern store interior, where you can explore a wide range of eyewear options.</p>
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5oexsN4NwRvk1UrUxfODL1bZwDYhsq0G1TQ&usqp=CAU" style="width: 100%; margin-top: 20px; margin-bottom: 20px;" alt="Eyewear Store">
    <h1><strong>Store Hours</strong></h1>
    
    <div style="display: flex; justify-content: space-between;">
      <div style="flex: 1;">
        <p>Monday - Friday: 9:00 AM - 9:00 PM</p>
        <p>Saturday: 10:00 AM - 6:00 PM</p>
        <p>Sunday: Closed</p>
      </div>
    </div>
    
  </div>
</div>


<div class="slideshow-title">
  <h2>MỘT SỐ HÌNH ẢNH NỔI BẬT BÁN CHẠY CỦA CỬA HÀNG </h2>
</div>

<div id="slideshow-container" style="max-width: 800px; margin: 0 auto;">
  <img class="mySlides" src="https://product.hstatic.net/1000269337/product/side-326_4db4234d73704c42b1d73a86adaabd83_master.jpg" style="width: 100%;">
  <img class="mySlides" src="https://kinhmatanna.com/wp-content/uploads/2023/05/0003.jpg" style="width: 100%;">
  <img class="mySlides" src="https://cf.shopee.vn/file/78cb123e9836f12982fad736e948238f" style="width: 100%;">
</div>



    
    


<!-- Thêm nút Previous và Next -->
<!-- <button class="prev" onclick="plusSlides(-1)">Previous</button>
<button class="next" onclick="plusSlides(1)">Next</button>
 -->

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
  var slideIndex = 0;
  
  function showSlides() {
    var slides = $(".mySlides");
    for (var i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {
      slideIndex = 1;
    }
    slides[slideIndex - 1].style.display = "block";
    setTimeout(showSlides, 3000); // Thay đổi ảnh sau mỗi 3 giây
  }
  
  showSlides();
  <!--
  function plusSlides(n) {
	    slideIndex += n;
	    var slides = $(".mySlides");
	    if (slideIndex < 1) {
	      slideIndex = slides.length;
	    }
	    if (slideIndex > slides.length) {
	      slideIndex = 1;
	    }
	    for (var i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";
	    }
	    slides[slideIndex - 1].style.display = "block";
	  }

	  // Gán sự kiện click cho nút Previous và Next
	  $(".prev").click(function() {
	    plusSlides(-1);
	  });

	  $(".next").click(function() {
	    plusSlides(1);
	  });
	  -->
});
</script>

<!-- Image of Location/Map -->
<!--  <img src="store_location.jpg" style="width: 100%;" id="storeMap" alt="Store Location"> -->
</body>
</html>