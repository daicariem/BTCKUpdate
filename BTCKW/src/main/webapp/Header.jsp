<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        /* For example, you can add styles to the navbar or other elements. */
    </style>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
            <c:if test="${sessionScope.acc.isAdmin == 1}">
            <li class="nav-item">
                            <a class="nav-link" href="#">Manager Account</a>
                        </li>
                        </c:if>
                        <c:if test="${sessionScope.acc.isSell == 1}">
                        <li class="nav-item">
                            <a class="nav-link" href="Manager">Manager Product</a>
                        </li>
                        </c:if>
            <c:if test="${sessionScope.acc != null}">
                <li class="nav-item">
                    <a class="nav-link" href="#">Hello ${sessionScope.acc.username}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout">Logout</a>
                </li>
                </c:if>
                <c:if test="${sessionScope.acc == null}"> 
                <div class="menu-item" id="login"><i class="fas fa-sign-in-alt"></i><a href="login.jsp">LOGIN</a></div>
                </c:if>
            </ul>

            
        </div>
    </div>
</nav>

	 

<!-- Add your website content here -->

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>
</html>