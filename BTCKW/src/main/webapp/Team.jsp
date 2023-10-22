<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <style>
    /* Thêm kiểu dáng cho phần container */
    .team-container {
      padding: 128px 16px;
      text-align: center;
    }

    /* Thêm kiểu dáng cho h3 và p */
    .team-heading {
      font-size: 24px;
    }

    .team-subheading {
      font-size: 18px;
    }

    /* Thêm kiểu dáng cho các thành viên trong đội ngũ */
    .team-member {
      margin-top: 64px;
      display: inline-block;
      width: 100%;
      max-width: 280px;
      text-align: left;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    }

    .team-member img {
      width: 100%;
      border-top-left-radius: 5px;
      border-top-right-radius: 5px;
    }

    .team-member h3 {
      font-size: 20px;
      margin: 10px;
    }

    .team-member .role {
      font-size: 16px;
      color: #555;
      margin: 10px;
    }

    .team-member p {
      margin: 10px;
    }

    .team-member button {
      background-color: #f1f1f1;
      border: none;
      color: #333;
      padding: 10px;
      width: 100%;
      cursor: pointer;
    }

    .team-member button:hover {
      background-color: #ddd;
    }
  </style>
</head>
<body>
<div class="team-container" id="team">
  <h3 class="team-heading">THE TEAM</h3>
  <p class="team-subheading">Division work</p>
  <div class="team-row">
    <div class="team-member">
      <img src="https://scontent.fsgn5-8.fna.fbcdn.net/v/t39.30808-6/364682243_1796957844093472_6740923835246005805_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=EtwlQvOldGMAX8YP2ii&_nc_ht=scontent.fsgn5-8.fna&oh=00_AfD01R-gFA1jTbOYwZWpvirMWTGk6-6KIyvetUewAq2PDw&oe=6531713F" alt="Vương">
      <div class="team-member-details">
        <h3>Trường Vương</h3>
        <p class="role">DESIGN FRONT-END</p>
        <p>..........</p>
        <button><i class="fas fa-envelope"></i> Contact</button>
      </div>
    </div>
    <div class="team-member">
      <img src="https://scontent.fsgn5-2.fna.fbcdn.net/v/t1.15752-9/368889817_924238049043687_8573842963975941638_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=ae9488&_nc_ohc=lx_k9VOUBNgAX_mauVt&_nc_ht=scontent.fsgn5-2.fna&oh=03_AdQP7nBgX9a9cW6Ui5u7MUxOv044CnmiFFZC0G8r7VaoVw&oe=654C9861" alt="Ân">
      <div class="team-member-details">
        <h3>Hoàng Ân</h3>
        <p class="role">Art Director</p>
        <p>..........</p>
        <button><i class="fas fa-envelope"></i> Contact</button>
      </div>
    </div>
    
    <div class="team-member">
      <img src="https://scontent.fsgn5-11.fna.fbcdn.net/v/t1.15752-9/370305166_807428367792887_8229020136854154518_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=ae9488&_nc_ohc=QIxDh_mLQKsAX9JbkmS&_nc_ht=scontent.fsgn5-11.fna&oh=03_AdQ4LsZcIXLtcqhuC4Wgb7V_sUc5BdOs6thymzFeXWCXYQ&oe=654C9EC7" alt="Minh Tú">
      <div class="team-member-details">
        <h3>Minh Tú</h3>
        <p class="role">Web Designer</p>
        <p>..........</p>
        <button><i class="fas fa-envelope"></i> Contact</button>
      </div>
    </div>
    
    <div class="team-member">
      <img src="https://scontent.fsgn5-8.fna.fbcdn.net/v/t39.30808-6/262170166_937118827207752_7516193524510202391_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=0-IHjdPy1noAX_xVXV6&_nc_ht=scontent.fsgn5-8.fna&oh=00_AfCvJa0kJULppqfZw5L_EW7REtC4Q-2PiWIQ4b-xiDY6jQ&oe=6530F658" alt="Đình Tú">
      <div class="team-member-details">
        <h3>Đình Tú</h3>
        <p class="role">Designer</p>
        <p>..........</p>
        <button><i class="fas fa-envelope"></i> Contact</button>
      </div>
    </div>

    <div class="team-member">
      <img src="https://scontent.fsgn5-11.fna.fbcdn.net/v/t1.15752-9/387594795_1690002258172855_7237672613196829287_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=ae9488&_nc_ohc=G0uB2xS-PIAAX-rkgLE&_nc_ht=scontent.fsgn5-11.fna&oh=03_AdQUPeY9VSomB7vlZl0p-AHvrbeHDmh0RXlOqZjdN-w4lw&oe=654C892B" alt="Bảo Long">
      <div class="team-member-details">
        <h3>Bảo Long</h3>
        <p class="role">Designer</p>
        <p>..........</p>
        <button><i class="fas fa-envelope"></i> Contact</button>
      </div>
    </div>
  </div>
</div>



</body>
</html>