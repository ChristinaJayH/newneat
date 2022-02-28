<style type="text/css">

    @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;1,500&display=swap');

    * {
        box-sizing: content-box;
        margin: 0;
        padding: 0;
        background-color: white;
        font-family: 'Montserrat', sans-serif;
    }

    body{

        background-color: #14213D;
    }

    li, a{

        font-weight: 500;
        font-size: 20px;
        color: black;
        text-decoration: none;

    }

    header {
        display: flex;
        justify-content: flex-end;
        align-items: center;
        padding: 10px 10%;


    }
    .logo{
        cursor: pointer;
        width: 200px;
        height: 200px;
        order: 1; /*positions the logo on the right side*/
        margin-right: auto;
        margin-top: -5%;

    }

    nav{
        order:1;
        margin-top: -5%;

    }
    .btn {
        order: 2;
        background-color: white;
        margin-top: -5%;
    }
    .nav__links li {
        display: inline-block;
        padding: 0px 20px;
        background-color: white;
    }

    .nav__links li:nth-child(1) {

        padding: 0px 20px 0 0;

    }

    .nav__links li a{
        transition: all 0.3s ease 0s;
        background-color: white;
    }
    .nav__links li a:hover {
        transition: all 0.3s ease 0s;
    }
    .nav__links li a hover {
        color: black;
    }

    button {

        border: 0;
        line-height: 2.5;
        padding: 0 20px;
        font-size: 1rem;
        text-align: center;
        color: #fff;
        text-shadow: 1px 1px 1px whitesmoke;
        border-radius: 10px;
        background-color: #FCA311;
        margin-left: 20px;
    }

    button:hover {

        background-color: black;
    }
    .box {

        display:flex;
        margin-top: -5%;
        margin-left: 0%;
        background-color: #14213D;
    }

    form {
        border-style: solid;
        text-align: center;
        border-width: 5px;
    }
    form button {

        padding: 14px 40px;
    }


    .box  img {
        opacity: 1;
        width: 100px;
        margin-top: -5%;
    }
    .footer {
        text-align: center;

    }
    .flex-container {
        display: flex;

    }

    .flex-container,  div {
        margin: 50px;
        justify-content: center;
        font-family:'Times New Roman', Times, serif !important;
    }
    ul {
        list-style-type: none;
        background-color: white;
        font-family: 'Merriweather', serif !important;

    }

    .login-page {
        width: 360px;
        padding: 0% 0 0;
        margin: auto;
    }
    .form {
        position: relative;
        max-width: 360px;
        margin: 0 auto 50px;
        padding: 45px;
        text-align: center;
        box-shadow: none;
    }
    .form input {
        font-family: "Roboto", sans-serif;
        outline: 0;
        background: #f2f2f2;
        width: 100%;
        border: 0;
        margin: 0 0 15px;
        padding: 15px;
        box-sizing: border-box;
        font-size: 14px;
    }
    .form button {
        text-transform: uppercase;
        outline: 0;
        background: black;
        width: 50%;
        border: 0;
        padding: 15px;
        color: #FFFFFF;
        font-size: 14px;
        -webkit-transition: all 0.3 ease;
        transition: all 0.3 ease;
        cursor: pointer;
    }
    .form button:hover,.form button:active,.form button:focus {
        background: black;
    }
    .form .message {
        margin: 15px 0 0;
        color: #b3b3b3;
        font-size: 12px;
    }
    .form .message a {
        color: black;
        text-decoration: none;
    }
    .form .register-form {
        display: none;
    }
    .container {
        position: relative;
        z-index: 1;
        max-width: 0px;
        margin: 0 0;
    }
    .container:before, .container:after {
        content: "";
        display: block;
        /* clear: both; */
    }
    .container .info {
        margin: 0px auto;
        text-align: center;
    }
    .container .info h1 {
        margin: 0 0 0px;
        padding: 0;
        font-size: 36px;
        font-weight: 300;
        color: #1a1a1a;
    }
    .container .info span {
        color: #4d4d4d;
        font-size: 12px;
    }
    .container .info span a {
        color: #000000;
        text-decoration: none;
    }
    .container .info span .fa {
        color: #EF3B3A;
    }


</style>


<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width,
    initial-scale=1.0">
    <title>NEAT Home</title>

</head> <header>
    <img class="logo" src="images/NeatLogo.png" alt="neatlogo">
    <nav>
        <ul class="nav__links">
            <li><a href="#about">About</a></li>
            <li><a href="#shop">Shop</a></li>
            <li> <a href="#features">Features</a></li>
            <li><a href="#home">Home</a></li>

        </ul>
    </nav>
    <a class="btn" href="registration/registration"><button> Sign Up</button></a>
</header>
<body  style="background-color: #14213D;">
<div style="background-color: #14213D; color: white;">
    <p style="background-color: navy;"><h1 style="background-color: #14213D"  > A simple <i style=" background-color: #14213D;">digital organizer </i><br style="background-color: #14213D;">to manage and keep track of everday life.</h1></p>
    <!-- <div> -->
    <div class="form">
        <form class="register-form">
            <input type="text" placeholder="name"/>
            <input type="password" placeholder="password"/>
            <input type="text" placeholder="email address"/>
            <button>create</button>
            <p class="message">Already registered? <a href="#">Sign In</a></p>
        </form>
        <form class="login-form">
            <input type="text" placeholder="username"/>
            <input type="password" placeholder="password"/>
            <button style="background-color: #FCA311">login</button>
            <p class="message">Not registered? <a href="#">Create an account</a></p>
        </form>
    </div>
    <!-- <div><a class="btn" href="#"><button> LOGIN TO YOUR ACCOUNT</button></a></div>  -->
    <!-- <form action="" method="get" class="sign-in">
       <div class="login-header">
           <h3> <b style="text-align: ;">LOGIN </b></h3>
       </div>

       <div class ="sign-in">

           <label for="username">
           <input style="background-color:white;" type="text" username="username" id="username" placeholder="Username" required>
       </div>
       <div class ="sign-in">
           <label for="password">
           <input style="background-color:white;"type="text" username="username" id="username" placeholder="Password" required>
       </div>
       <div class="login__btn">
          <a class="login__btn" href="#"></a> <button> LOGIN </button>
       </div>
   </form> -->

</body>



<footer>
    <div class="flex-container">
        <div>
            <ul class="footer-box">
                <h2>Support</h2>
                <li><a href="#support">Support</a></li>
                <li><a href="#faq">FAQ</a></li>
                <li> <a href="#gettingstarted">Getting Started</a></li>
                <li><a href="#subscriptions">Subscriptions</a></li>
                <li><a href="#gettingstarted">Getting Started</a></li>
            </ul>
        </div>
        <div>
            <ul class="footer-box">
                <h2> Features</h2>

                <li><a href="#sharedcalendars">Shared Calendars</a></li>
                <li> <a href="#To-do-list">To-do-list</a></li>
                <li><a href="#Shopping List">Shopping List</a></li>
                <li><a href="#notes">Notes</a></li>
                <li><a href="#customizabledashboard">Customizable Dashboard</a></li>
        </div>
        </ul>
        <div>
            <ul class="footer-box">
                <h2>About Us</h2>
                <li><a href="#learnmore">Learn More</a></li>
                <li><a href="#careers">Careers</a></li>
                <li> <a href="#contactus">Contact Us</a></li>
                <li><a href="#MediaandPress">Media and Press</a></li>
                <li><a href="#Contact Us">Home</a></li>
            </ul>
        </div>
    </div>
</footer>
</footer>
<%--<script> src="app.js"</script>--%>
</html>
