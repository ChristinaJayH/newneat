@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;1,500&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Montserrat', sans-serif;

}

html {

    font-size: 62.5%;
}

.container {

    width: 100%;
    height: 100vh;
    background-color: #14213d;
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;

}

.calendar {
    width: 45rem;
    height: 52rem;
    background-color: #222227;
    box-shadow: 0 0.5rem 3rem #14213D;

}

.month {
    width: 100%;
    height: 12rem;
    background-color: #FCA311;
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0.2rem;
    text-align: center;
    text-shadow: 0 0.3rem 0.5rem rgba(0, 0, 0, 0.5);

}

.month i {
    font-size: 2.5rem;
    cursor: pointer;

}

.month h1 {
    font-size: 3rem;
    font-weight: 400;
    text-transform: uppercase;
    letter-spacing: 0.2rem;
    margin-bottom: 1rem;

}

.month p {
    font-size: 1.6rem;

}

.weekdays {
    width: 100%;
    height: 5rem;
    padding: 0 0.4rem;
    display: flex;
    align-items: center;
}

.weekdays div {
    font-size: 1.5rem;
    font-weight: 400;
    letter-spacing: 0.1rem;
    width: calc(44.2rem / 7);
    display: flex;
    justify-content: center;
    align-items: center;
    text-shadow: 0 0.3rem 0.5rem rgba(0, 0, 0, 0.5);

}

.days {
    width: 100%;
    display: flex;
    flex-wrap: wrap;
    padding: 0.2rem;

}

.days div {
    font-size: 1.4rem;
    margin: 0.3rem;
    width: calc(40.2rem/ 7);
    height: 5rem;
    display: flex;
    justify-content: center;
    align-items: center;
    text-shadow: 0 0.3rem 0.5rem black;
    transition: background-color 0.2s;

}

.days div:hover:not(.today){
    background-color: 262626;
    border: 0.2rem solid #C2C2C2;
    cursor: pointer;

}

.prev-date,
.next-date {
    opacity: 0.5;

}


.today {

    background-color: #FDB849;
}
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calendar</title>
    <link rel="stylesheet" href="calendar.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
</head>
<body>

    <div class ="container">
        <div class ="calendar">
            <div class="month">
                <i class="fas fa-angle-left prev"></i>
                <div class="date">
                    <h1>February</h1>
                    <p>Friday 25, 2022</p>
                </div>
                <i class="fas fa-angle-right next"></i>
</div>
<div class="weekdays">
    <div>Sun</div>
    <div>Mon</div>
    <div>Tue</div>
    <div>Wed</div>
    <div>Thu</div>
    <div>Fri</div>
    <div>Sat</div>
</div>
<div class="days">
 <div class="prev-date">30</div>
 <div class="prev-date">31</div>
 <div>1</div>
 <div>2</div>
 <div>3</div>
 <div>4</div>
 <div>5</div>
 <div>6</div>
 <div>7</div>
 <div>8</div>
 <div>9</div>
 <div>10</div>
 <div>11</div>
 <div>12</div>
 <div>13</div>
 <div>14</div>
 <div>15</div>
 <div>16</div>
 <div>17</div>
 <div>18</div>
 <div>19</div>
 <div>20</div>
 <div>21</div>
 <div>22</div>
 <div>23</div>
 <div>24</div>
 <div class="today">25</div>
 <div>26</div>
 <div>27</div>
 <div>28</div>

 <div class="next-date">1</div>
 <div class="next-date">2</div>
 <div class="next-date">3</div>
 <div class="next-date">4</div>
 <div class="next-date">5</div>
 <div class="next-date">6</div>
 <div class="next-date">7</div>
 <div class="next-date">8</div>
 <div class="next-date">9</div>
<div class="next-date">10</div>
<div class="next-date">11</div>
<div class="next-date">12</div>

</div>
</div>
 </div>

    <script src="calendar.js"></script>


</body>
</html>