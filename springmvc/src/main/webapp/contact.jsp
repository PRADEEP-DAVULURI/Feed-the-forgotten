<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Feed The Forgotten</title>
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

        .donate-button {
            display: inline-block;
            padding: 1em 2em;
            font-size: 1.5em; /* Larger font size */
            color: white; /* White text */
            background-color: lime; /* Lime background */
            border: none;
            border-radius: 5px;
            text-decoration: none;
            text-align: center;
            margin: 1em; /* Add some margin */
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .donate-button:hover {
            background-color: darkgreen; /* Darker green on hover */
        }

        .quote {
            font-size: 4em; /* Big letters */
            font-weight: bold;
            color: white;
            text-align: center;
            margin-top: 2em;
        }

        .quote-subtext {
            font-weight: 300; /* Light bold */
            color: white;
            text-align: center;
            margin: 0.5em 0 2em 0; /* Adjusted spacing */
        }

        .image-container {
            display: flex;
            justify-content: center;
            margin: 2em 0;
            flex-direction: column; /* Stack images vertically */
            align-items: center; /* Center align */
        }

        .image-container img {
            width: 100%; /* Responsive size */
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            margin: 1em 0; /* Add spacing between images */
        }

        .input-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 2em 0;
        }

        .input-wrapper {
            position: relative; /* Position relative for absolute positioning of icons */
            width: 80%; /* Set width for input fields */
            margin: 0.5em 0; /* Add margin for spacing */
        }

        .input-field {
            width: 100%; /* Full width */
            padding: 1em 2em; /* Padding for input fields */
            border: none;
            border-radius: 7px;
            background: rgba(255, 255, 255, 0.1); /* Blur effect */
            color: white; /* Input text color */
            font-size: 1em;
            outline: none; /* Remove outline */
        }

        .input-field::placeholder {
            color: white; /* Placeholder color */
            opacity: 0.7; /* Slightly transparent */
        }

        /* Icon styles */
        .icon {
            position: absolute; /* Position the icon absolutely */
            left: 10px; /* Position it inside the input */
            top: 50%; /* Center vertically */
            transform: translateY(-50%); /* Adjust for centering */
            width: 20px; /* Set width for icons */
            height: 20px; /* Set height for icons */
        }

        .send-button {
            padding: 1em 2em;
            font-size: 1.5em;
            color: white; /* White text */
            background-color: red; /* Red background */
            border: none;
            border-radius: 5px;
            text-decoration: none;
            text-align: center;
            margin: 1em; /* Add some margin */
            transition: background-color 0.3s ease;
        }

        .send-button:hover {
            background-color: darkred; /* Darker red on hover */
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

        /* Rocket Animation */
        .rocket {
            position: absolute;
            bottom: 10%; /* Adjust starting position */
            left: 50%; /* Center horizontally */
            transform: translateX(-50%);
            width: 50px; /* Size of the rocket */
            opacity: 0; /* Initially hidden */
            transition: opacity 0.5s ease, bottom 0.5s ease; /* Smooth transition */
        }

        .launch {
            opacity: 1; /* Make visible */
            bottom: 100%; /* Move up */
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
        <h2>Contact Us</h2>

        <div class="image-container">
            <img src="https://images.unsplash.com/photo-1609139027234-57570f43f692?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Contact Image">
            <div class="quote">SAVE FOOD</div>
            <div class="quote-subtext">Not just humans, feeding animals too is a true gesture of compassion.</div>
            <img src="https://plus.unsplash.com/premium_photo-1680985551009-05107cd2752c?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Contact Us">
        </div>

        <div class="input-container">
            <div class="input-wrapper">
                <img src="https://cdn-icons-png.flaticon.com/128/9305/9305279.png" alt="Name Icon" class="icon">
                <input type="text" class="input-field" placeholder="Name" required>
            </div>
            <div class="input-wrapper">
                <img src="https://cdn-icons-png.flaticon.com/128/732/732200.png" alt="Email Icon" class="icon">
                <input type="email" class="input-field" placeholder="@Email" required>
            </div>
            <div class="input-wrapper">
                <img src="https://cdn-icons-png.flaticon.com/128/9142/9142042.png" alt="Mobile Icon" class="icon">
                <input type="tel" class="input-field" placeholder="Mobile" required>
            </div>
            <div class="input-wrapper">
                <img src="https://cdn-icons-png.flaticon.com/128/6206/6206594.png" alt="Issue Icon" class="icon">
                <input type="text" class="input-field" placeholder="Issue's" required>
            </div>
        </div>

        <a href="#" class="send-button" onclick="launchRocket()">SEND</a> <!-- Send button -->

        <a href="#" class="donate-button">DONATE</a> <!-- DONATE button -->

        <img src="https://cdn-icons-png.flaticon.com/128/11181/11181465.png" alt="Rocket" class="rocket" id="rocket">
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

    <script>
        function launchRocket() {
            const rocket = document.getElementById('rocket');
            rocket.classList.add('launch');
            setTimeout(() => {
                rocket.classList.remove('launch'); // Reset for potential re-launch
            }, 1000); // Duration of the animation
        }
    </script>
</body>

</html>
