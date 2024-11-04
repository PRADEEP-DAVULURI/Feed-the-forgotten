<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log In</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Arial', sans-serif;
            overflow: hidden; /* Prevent scrolling */
        }

        /* Fullscreen video background */
        .video-background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover; /* Cover the whole screen */
            z-index: -1; /* Behind everything else */
        }

       .container {
    display: flex;
    background-color: rgba(, 255, 255, 0.8); /* Semi-transparent background */
    border-radius: 15px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
    overflow: hidden;
    max-height: 1500px; /* Increased height to 80vh */
    max-width: 500px; /* Increased width to 900px */
    position: relative; /* Needed for positioning the shine effect */
    margin: auto; /* Center the container */
    padding: 100px; /* Increased padding for more space inside */
}


        .shine-effect {
            position: absolute;
            top: -50%;
            left: -50%;
            width: 150%;
            height: 150%;
            background: linear-gradient(45deg, rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0)); /* White shine effect */
            transform: rotate(60deg);
            animation: shine 2.7s infinite;
            pointer-events: none; /* To ensure the effect doesn't interfere with inputs */
        }

        @keyframes shine {
            0% {
                transform: translate(-150%, -150%) rotate(45deg);
            }
            100% {
                transform: translate(150%, 150%) rotate(45deg);
            }
        }

        .form-container {
            width: 100%; /* Take full width of container */
            z-index: 1; /* Ensures form content is above the shine effect */
        }

        h2 {
            margin-bottom: 20px;
            color: #fff;
            z-index: 1;
            position: relative;
            text-align: center; /* Center the heading */
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            z-index: 1;
            position: relative;
        }

        button {
            background-color: #ff6b6b;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            z-index: 1;
            position: relative;
        }

        button:hover {
            background-color: #ff4d4d;
        }

        .footer {
            margin-top: 15px;
            font-size: 14px;
            text-align: center;
            z-index: 1;
            position: relative;
        }

        .footer a {
            color: #ff6b6b;
            text-decoration: none;
        }
    </style>
</head>

<body>
    <video autoplay muted loop class="video-background">
        <source src="https://videos.pexels.com/video-files/2480792/2480792-sd_640_360_24fps.mp4" type="video/mp4">
    </video>

    <div class="container">
        <div class="shine-effect"></div> <!-- Shine effect for the container -->
        <div class="form-container">
            <h2>Log In</h2>
            <form action="your_login_action.jsp" method="post">
                <input type="email" name="email" placeholder="Email" required>
                <input type="password" name="password" placeholder="Password" required>
                <button type="submit">Log In</button>
            </form>
            <div class="footer">
                <p>Don't Have an Account? <a href="signup.jsp">Sign Up</a></p>
            </div>
        </div>
    </div>
</body>

</html>
