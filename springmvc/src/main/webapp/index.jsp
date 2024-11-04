
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feed The Forgotten</title>
    <style>
    
    
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
        /* Adding some styling for quotes */
        .quote {
            position: absolute;
            color: black;
            font-size: 2em; /* Adjust size as needed */
            text-align: center;
            width: 100%;
            font-family: 'Satisfy', cursive; /* Stylish font */
            text-shadow: 1px 1px 5px rgba(255, 255, 255, 0.7); /* Shadow for better visibility */
        }

        .quote:nth-child(1) {
            top: 10%; /* Position for the first quote */
        }

        .quote:nth-child(2) {
            top: 25%; /* Position for the second quote */
        }

        .quote:nth-child(3) {
            top: 40%; /* Position for the third quote */
        }

        .horizontal-line {
            width: 100%;
            height: 5px; /* Adjust thickness as needed */
            background-color: limegreen; /* Color of the line */
            margin: 2em 0; /* Spacing above and below */
        }

        .button-container {
            display: flex;
            justify-content: center;
            gap: 1em;
            margin: 2em 0;
        }

        .donate-button {
            padding: 1em 2em;
            background-color: limegreen;
            color: darkgreen;
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .donate-button:hover {
            background-color: darkgreen; /* Darker green on hover */
        }

        .take-button {
            padding: 1em 2em;
            background-color: lightcoral;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .take-button:hover {
            background-color: red; /* Darker red on hover */
        }

        /* Pie chart container */
        .pie-chart-container {
            display: flex;
            justify-content: center;
            margin: 2em 0;
        }

        /* Map container */
        .map-container {
            position: relative;
            margin: 2em 0;
            height: 700px;
            width: 100%; /* Adjust height as needed */
        }

        .map {
            width: 100%;
            height: 100%;
            border: 2px solid limegreen; /* Lime color border */
            border-radius: 5px;
        }

        .location-symbol {
            position: absolute;
            top: 10px; /* Adjust top position */
            left: 10px; /* Adjust left position */
            width: 50px; /* Adjust size */
            height: 50px; /* Adjust size */
            background-color: red; /* Color of the symbol */
            border-radius: 50%; /* Make it circular */
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: bold;
        }

        .search-container {
            text-align: center;
            margin-top: 1em;
        }

        .search-input {
            padding: 0.5em;
            width: 300px; /* Width of the input */
            border: 1px solid #ccc; /* Border color */
            border-radius: 5px; /* Rounded corners */
        }

        .search-button {
            padding: 0.5em 1em;
            background-color: limegreen;
            color: darkgreen;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-left: 1em;
            transition: background-color 0.3s ease;
        }

        .search-button:hover {
            background-color: darkgreen; /* Darker green on hover */
        }
    </style>
</head>


<body style="font-family: Arial, sans-serif; background-color: #000; color: #fff; margin: 0; padding: 0;">
    <header style="background-color: #000; color: #fff; padding: 2em 1em; text-align: center;">
        <div style="display: inline-block; text-align: center;">
            <div style="font-size: 2em; font-weight: bold; line-height: 1.2;">FEED</div>
            <div style="font-size: 2em; font-weight: bold; line-height: 1.2; filter: blur(2px); margin-left: 10em;">THE FORGOTTEN</div>
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
    
    <div style="text-align: center; margin: 2em 0;">
        <h2 style="color: limegreen; font-size: 1.5em; margin-bottom: 1em;">MOST DONATED</h2>
        <div style="display: flex; justify-content: center; gap: 1em;">
            <div style="width: 80px; height: 80px; border-radius: 50%; border: 5px solid limegreen; overflow: hidden;">
                <img src="YOUR_VIDEO_THUMBNAIL_URL" alt="User 1" style="width: 100%; height: 100%; object-fit: cover;">
            </div>
            <div style="width: 80px; height: 80px; border-radius: 50%; border: 5px solid limegreen; overflow: hidden;">
                <img src="YOUR_VIDEO_THUMBNAIL_URL" alt="User 2" style="width: 100%; height: 100%; object-fit: cover;">
            </div>
            <div style="width: 80px; height: 80px; border-radius: 50%; border: 5px solid limegreen; overflow: hidden;">
                <img src="YOUR_VIDEO_THUMBNAIL_URL" alt="User 3" style="width: 100%; height: 100%; object-fit: cover;">
            </div>
        </div>
    </div>

    <div style="display: flex; flex-direction: column; align-items: center; padding: 4em 2em; position: relative;">
        <h2 style="color: #fff; margin-bottom: 1em;">Home Page</h2>
        <div style="position: relative; width: 100%; max-width: 100%;">
            <img src="https://t4.ftcdn.net/jpg/06/35/44/45/360_F_635444578_CDFldlAX7gZprsu1ZCIs5vSlglSEP5wc.jpg" style="width: 100vw; height: auto;">
            <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); color: white; font-weight: bold; font-size: 3em; text-align: center; padding: 0.5em; font-family: 'Satisfy', cursive; background-color: rgba(0, 0, 0, 0.5);">"EVERY MEAL YOU SAVE<br>FOR SOMEONE IN NEED."<br></div>
        </div>

        <div style="display: flex; justify-content: center; margin-top: 2em; position: relative; width: 120%; height: 100%; overflow: hidden;">
            <video autoplay muted loop style="width: 100%; height: 100%; object-fit: cover; border-radius: 0vh;">
                <source src="https://videos.pexels.com/video-files/6893988/6893988-sd_640_360_25fps.mp4" type="video/mp4">
            </video>
            <!-- Quotes overlay -->
            <div class="quote">"The hand that gives food to the poor is the true hand of God."</div>
        </div>

        <!-- Horizontal line -->
        <div class="horizontal-line"></div>

        <!-- Buttons for Donate and Take -->
       <!-- Existing code omitted for brevity -->

<!-- Buttons for Donate and Take -->
<div class="button-container">
    <button class="donate-button" onclick="window.location.href='donate.jsp'">DONORS</button>
    <button class="take-button" onclick="window.location.href='take.jsp'">TAKERS</button>
</div>

<!-- Existing code omitted for brevity -->

        <!-- Pie chart container -->
        <div class="pie-chart-container">
            <canvas id="pieChart" width="400" height="400"></canvas>
        </div>

        <!-- Map container -->
        <div class="map-container">
            <div class="location-symbol">📍</div>
            <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.8491882554643!2d-122.42683548468118!3d37.78649077975787!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80858096cb637e3b%3A0x2d3b61c8f7cc5a9c!2sSan%20Francisco%2C%20CA%2094103%2C%20USA!5e0!3m2!1sen!2sin!4v1663138489171!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
            <div style="position: absolute; bottom: 10px; left: 10px; color: white; font-weight: bold; font-size: 1.5em; text-align: center; background-color: rgba(0, 0, 0, 0.7); padding: 0.5em; border-radius: 5px;">FIND THE HUNGER</div>
        </div>

        <!-- Search container -->
        <div class="search-container">
            <input type="text" class="search-input" placeholder="Search for food donation foundations...">
            <button class="search-button" onclick="searchFoundation()">SEARCH</button>
        </div>

    </div>

    <footer style="background-color: #333; color: white; text-align: center; padding: 1em; position: fixed; bottom: 0; width: 100%;">
        &copy; Feed The Forgotten
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // Sample data for pie chart
        const data = {
            labels: ['Donations', 'Takes'],
            datasets: [{
                label: 'Donation Data',
                data: [60, 40], // Change these values based on your user data
                backgroundColor: ['limegreen', 'lightcoral'],
                borderColor: 'black',
                borderWidth: 1
            }]
        };

        const config = {
            type: 'pie',
            data: data,
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Donation vs Take Overview'
                    }
                }
            },
        };

        const pieChart = new Chart(
            document.getElementById('pieChart'),
            config
        );

        // Function to handle search
        function searchFoundation() {
            const query = document.querySelector('.search-input').value;
            const searchURL = `https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(query)}`;
            window.open(searchURL, '_blank');
        }
    </script>
</body>

</html>
