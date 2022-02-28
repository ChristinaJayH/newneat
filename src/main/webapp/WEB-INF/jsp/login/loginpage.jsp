<html>
<head>
    <style>
        *{
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
            padding: 50px;
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
            background: none;
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

        form input {
            font-family: "Roboto", sans-serif;
            outline: 0;
            background: #f2f2f2;
            width: 70%;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
        }


    </style>
</head>
<div>

    <form
            style="background-color: white;border-style: solid;
      border-width: 20px;
      border-left-width: 10px;
      border-right-width: 10px;
      border-color: white;
      box-shadow: 10px 10px 50px lightblue;">
        <h2 style="background-color: white; color:black;"><heading> ACCOUNT LOGIN</heading>
        </h2>

        <label style="float:left;">
            <input type="text" id="username"><span>Username:</span>
        </label>

        <label for="password">
            <input type="password" id="password">
            <span>Password:</span>
        </label>

        <button type="button">LOGIN</button><br>
    </form>

</div>
