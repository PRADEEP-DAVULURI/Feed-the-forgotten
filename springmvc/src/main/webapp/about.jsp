<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - Feed The Forgotten</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #000;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #000;
            color: #fff;
            padding: 2em 1em;
            text-align: center;
        }

        header .title-container {
            display: inline-block;
            text-align: center;
        }

        header .title-container .feed {
            font-size: 2em;
            font-weight: bold;
            line-height: 1.2;
        }

        header .title-container .forgotten {
            font-size: 2em;
            font-weight: bold;
            line-height: 1.2;
            filter: blur(2px);
            margin-left: 10em;
        }

        .taskbar {
            background-color: #16232F;
            padding: 1em 0;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .taskbar .right-buttons {
            margin-right: 2em;
        }

        .taskbar .right-buttons .button {
            display: inline-block;
            padding: 0.5em 1em;
            font-size: 1em;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            text-align: center;
            margin-left: 1em;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .taskbar .right-buttons .button:hover {
            background-color: #0056b3;
            color: #00ff00;
        }

        .taskbar .left-links {
            margin-left: 2em;
        }

        .taskbar a {
            color: white;
            text-decoration: none;
            margin: 0 1em;
            font-size: 1.2em;
            position: relative;
            transition: color 0.3s ease;
        }

        .taskbar a:hover {
            color: #00ff00;
        }

        .taskbar a::after {
            content: '';
            display: block;
            width: 0;
            height: 3px;
            background: #00ff00;
            transition: width 0.3s ease;
            position: absolute;
            bottom: -5px;
            left: 50%;
            transform: translateX(-50%);
        }

        .taskbar a:hover::after {
            width: 100%;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 4em 2em;
            position: relative;
        }

        h2 {
            color: #fff;
            margin-bottom: 1em;
        }

        .button {
            display: inline-block;
            padding: 0.5em 1em;
            font-size: 1em;
            color: black;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            text-align: center;
            margin: 0.5em;
        }

        .button:hover {
            background-color: #0056b3;
        }

        .lime-button {
            display: inline-block;
            padding: 0.5em 1em;
            font-size: 1em;
            color: green;
            background-color: lime;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            text-align: center;
            margin: 0.5em;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .lime-button:hover {
            background-color: darkgreen;
            color: white;
        }

        .donate-button {
            display: inline-block;
            padding: 2.5vh;
            font-size: 1.5em; /* Larger font size */
            color: white;
            background-color: orange; /* Orange background */
            border: none;
            border-radius: 15px;
            text-decoration: none;
            text-align: center;
            margin: 1em; /* Add some margin */
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .donate-button:hover {
            background-color: darkorange; /* Darker orange on hover */
        }

        .text-card {
            background-color: black;
            padding: 2em;
            border-radius: 10px;
            position: relative;
            overflow: hidden;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            margin: 2em 0;
        }

        .shine {
            position: absolute;
            top: -20%;
            left: -20%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, rgba(255, 255, 255, 0.3) 0%, rgba(255, 255, 255, 0) 100%);
            animation: shine 1.5s infinite;
            transform: rotate(30deg);
        }

        @keyframes shine {
            0% {
                transform: translateX(-100%) rotate(30deg);
            }

            100% {
                transform: translateX(100%) rotate(30deg);
            }
        }

        .image-container {
            display: flex;
            justify-content: center;
            margin: 2em 0;
            flex-wrap: wrap;
        }

        .image-card {
            position: relative;
            margin: 0 1em;
            overflow: hidden;
        }

        .image-card img {
            width: 250px;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
        }

        .image-shine {
            position: absolute;
            top: -10%;
            left: -10%;
            width: 120%;
            height: 120%;
            background: linear-gradient(90deg, rgba(255, 255, 255, 0.3) 0%, rgba(255, 255, 255, 0) 100%);
            animation: image-shine 1s infinite;
            transform: rotate(30deg);
        }

        @keyframes image-shine {
            0% {
                transform: translateX(-100%) rotate(30deg);
            }

            100% {
                transform: translateX(100%) rotate(30deg);
            }
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1em;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        footer .footer-links {
            margin-top: 0.5em;
        }

        footer a {
            color: white;
            text-decoration: none;
            margin: 0 1em;
            font-size: 1em;
            transition: color 0.3s ease;
        }

        footer a:hover {
            color: #00ff00;
        }
    </style>
</head>

<body>
    <header>
        <div class="title-container">
            <div class="feed">FEED</div>
            <div class="forgotten">THE FORGOTTEN</div>
        </div>
    </header>

    <nav class="taskbar">
        <div class="left-links">
            <a href="index.jsp">Home</a>
            <a href="about.jsp">About</a>
            <a href="contact.jsp">Contact</a>
            <a href="profile.jsp">Profile</a>
            <a href="news.jsp">News</a>
        </div>
        <div class="right-buttons">
            <a href="signup.jsp" class="button">Signup</a>
            <a href="login.jsp" class="button">Login</a>
        </div>
    </nav>

    <div class="container">
        <h2>About Us</h2>
        <div class="text-card">
            <div class="shine"></div>
            <p style="font-size: 1.5em; text-align: center;">"At FEED THE FORGOTTEN, every rescued meal and every donated piece of clothing is a testament to our commitment to compassion, turning what might be discarded into sources of comfort and sustenance for those who need it most, especially the most vulnerable among us."</p>
        </div>

        <div class="image-container">
            <div class="image-card">
                <div class="image-shine"></div>
                <img src="https://t4.ftcdn.net/jpg/06/28/20/75/360_F_628207521_BmfoI0hMDxmk6wsDyWmjJesg8LeJonj8.jpg" alt="Image 1">
            </div>
            <div class="image-card">
                <div class="image-shine"></div>
                <img src="https://t3.ftcdn.net/jpg/06/65/18/56/360_F_665185678_bEJgYjEiFmJ3nA7mJP9ipJxXnRBlhJjb.jpg" alt="Image 2">
            </div>
            <div class="image-card">
                <div class="image-shine"></div>
                <img src="https://media.istockphoto.com/id/1060352206/photo/donate-food-to-hungry-people-concept-of-poverty-and-hunger.jpg?s=612x612&w=0&k=20&c=BB37IPajPeKo8fsJ3m7z2TOUmCbD0nnJo79ZXBg89sM=" alt="Image 3">
            </div>
        </div>

        <div class="button-container">
            <a href="#" class="lime-button">Mission</a>
            <a href="#" class="lime-button">How to Donate</a>
            <a href="#" class="lime-button">Our Team</a>
        </div>
        <a href="#" class="donate-button">DONATE</a> <!-- Moved here and styled -->
    </div>

    <footer>
        &copy; Feed The Forgotten
        <div class="footer-links">
            <a href="index.jsp">HOME</a>
            <a href="about.jsp">ABOUT</a>
            <a href="contact.jsp">CONTACT</a>
            <a href="news.jsp">NEWS</a>
            <a href="#">DONATIONS</a>
            <a href="#">MAP</a>
        </div>
    </footer>
</body>

</html>
