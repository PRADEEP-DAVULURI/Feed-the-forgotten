<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: linear-gradient(to right, limegreen, black);
            font-family: 'Arial', sans-serif;
        }

        .container {
            display: flex;
            background-color: black;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            max-width: 800px;
            position: relative; /* Needed for positioning the shine effect */
        }

        .shine-effect {
            position: absolute;
            top: -50%;
            left: -50%;
            width: 150%;
            height: 150%;
            background: linear-gradient(45deg, rgba(0, 255, 0, 0.3), rgba(0, 255, 0, 0));
            transform: rotate(45deg);
            animation: shine 2.7s infinite;
            pointer-events: none; /* To ensure the effect doesn't interfere with inputs */
        }

        @keyframes shine {
            100% {
                transform: translate(-150%, -150%) rotate(45deg);
            }
            100% {
                transform: translate(150%, 150%) rotate(45deg);
            }
        }

        .form-container {
            padding: 30px;
            width: 50%;
            position: relative; /* Ensures elements within are positioned relative */
            z-index: 1; /* Ensures form content is above the shine effect */
        }

        h2 {
            margin-bottom: 20px;
            color: #fff;
            z-index: 1;
            position: relative;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
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

        .image-container {
            width: 50%;
            background-image: url('https://wallpaper.forfun.com/fetch/57/57bd93f9601bfcfcc2f8651405093493.jpeg');
            background-size: cover;
            background-position: center;
            z-index: 1; /* Ensures image is above the shine effect */
            position: relative;
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
    <div class="container">
        <div class="shine-effect"></div> <!-- Moving shine effect to apply to the entire container -->
        <div class="form-container">
            <h2>Sign Up</h2>
            <form action="your_signup_action.jsp" method="post">
                
                <input type="text" name="username" placeholder="User Name" required>
                <input type="email" name="email" placeholder="Email" required>
                <input type="password" name="password" placeholder="Password" required>

                <!-- Role selection dropdown -->
                <select name="role" required>
                    <option value="" disabled selected>Select your role</option>
                    <option value="donor">Donor</option>
                    <option value="recipient">Recipient</option>
                </select>

                <button type="submit">Sign Up</button>
            </form>
            <div class="footer">
                <p>Already Have an Account? <a href="login.jsp">Log In</a></p>
            </div>
        </div>
        <div class="image-container"></div>
    </div>
</body>


</html>
