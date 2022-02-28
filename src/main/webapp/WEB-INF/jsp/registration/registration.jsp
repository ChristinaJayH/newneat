<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}WEB-INF/css/RegistrationPage.css" />--%>
<c:choose>
    <c:when test="${empty formBeanKey.id}">
    </c:when>
    <c:otherwise>
        <h1>Edit User</h1>
    </c:otherwise>
</c:choose>

<html>
<head>
    <style type ="text/css">
        * {
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        heading, h2{
            border-top: 0px none;
            padding-bottom: 30px;
        }

        body{
            min-height:100vh;
            display:grid;
            place-content:center;
            font-family:sans-serif;
            color:black;
            text-align: center;
        }

        form{
            width:100vw;
            max-width:600px;
            border:50px solid white;
            padding: 40px;
            display:flex;
            flex-direction:column;
            color:black;


        }

        label{
            margin-bottom:15px;
            position:relative;
        }
        input{
            width:50%;
            padding:5px 10px;
            margin-top:5px;
            color: black;
            font-size: 15px;
            text-align: center;
        }
        span{
            position:absolute;
            top:10px;
            left:0;
            transform:translateY(5px);
            font-size:0.825em;
            transition-duration:300ms;
        }
        button{
            padding: 100px;
            border: none;
            background: #fca311;
            font-size: 15px;
            padding: 15px 0px;
            margin-top:20px;
            background: #fca311;
            color:#fff;
            border:1px solid white;
            cursor:pointer;
            border-radius:5px;
        }
        button:hover {
            padding: 10px;
            background-color: #fca311;
            box-shadow: 20px 20px 15px lightblue;
        }
        <html>
         <head>
         <style>
         <body>

    </style>
</head>
<div>
    <form method="POST" action="submit" enctype="utf8"
            style="background-color: white;border-style: solid;
      border-width: 20px;
      border-left-width: 10px;
      border-right-width: 10px;
      border-color: white;
      box-shadow: 10px 10px 50px lightblue;">
        <h2 style="background-color: white; color:black;"><heading> Create Your Account</heading>
        </h2>

        <label style="float:left;">
            <input type="text" id="username" name="username" value="${formBeanKey.username}"><span>Username:</span>
        </label>

        <label for="firstname">
            <input type="text" id="firstname" name="firstName" value="${formBeanKey.firstName}">
            <span>First Name:</span>
        </label>

        <label for="lastname">
            <input type="text" id="lastname" name="lastName" value="${formBeanKey.lastName}"><span>Last Name:</span>
        </label>

        <label for="email">
            <input type="email" id="email" name="email" value="${formBeanKey.email}">
            <span>Email:</span>
        </label>

        <label for="phone">
            <input type="phone" id="phone" name="phone" value="${formBeanKey.phone}">
            <span>Phone:</span>
        </label>

        <label for="password">
            <input type="password" id="password" name="password" value="${formBeanKey.password}">
            <span>Password:</span>
        </label>

        <label for="confirmpassword">
            <input type="confirmpassword" id="confirmpassword"name="confirmPassword" value="${formBeanKey.confirmPassword}">
            <span>Confirm Password:</span>
        </label>
        <button type="submit" role="button" id="register" name="register">Register</button><br>
        <h5 style="color: black;">Already have an account?&nbsp&nbsp&nbsp<a href="loginpage.jsp" style="color:rgb(0,0,255);text-decoration: none;">Login</h5>
    </form>
    <div>
        <c:forEach items="${formBeanKey.errorMessages}" var="message">
            <span style="color:red">${message}</span><br>
        </c:forEach>
    </div>
</div>
