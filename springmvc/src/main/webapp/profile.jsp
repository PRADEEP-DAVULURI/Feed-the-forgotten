<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile - Feed The Forgotten</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1c1e22;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        /* Task Bar Style */
        .task-bar {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #2c2f36;
            padding: 1em;
        }

        .task-bar a {
            color: white;
            text-decoration: none;
            padding: 0.5em 2em;
            margin: 0 1em;
            font-weight: bold;
            font-size: 1.2em;
            transition: background-color 0.3s ease;
        }

        .task-bar a:hover {
            background-color: lime;
            color: #000;
        }

        .profile-container {
            padding: 2em;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .profile-header {
            text-align: center;
            color: white;
            font-size: 2.5em;
            margin-bottom: 2em;
        }

        .profile-content {
            display: flex;
            align-items: flex-start;
            background-color: #2c2f36;
            padding: 2em;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
            width: 80%;
            margin-bottom: 2em;
        }

        .profile-picture {
            margin-right: 2em;
        }

        .profile-picture img {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            background-color: #333;
            object-fit: cover;
        }

        .profile-info {
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            width: 100%;
        }

        .profile-info label {
            font-weight: bold;
            margin-top: 1em;
        }

        .profile-info input,
        .profile-info textarea {
            width: 100%;
            padding: 0.5em;
            border-radius: 10px;
            border: none;
            margin-top: 0.5em;
            background-color: #1c1e22;
            color: #fff;
            font-size: 1em;
        }

        .save-button {
            background-color: lime;
            color: #000;
            border: none;
            padding: 1em 2em;
            font-size: 1.2em;
            border-radius: 10px;
            cursor: pointer;
            margin-top: 1.5em;
            transition: background-color 0.3s ease;
        }

        .save-button:hover {
            background-color: darkgreen;
        }

        .your-donations-button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 1em 2em;
            font-size: 1.2em;
            border-radius: 10px;
            cursor: pointer;
            margin-top: 2em;
            transition: background-color 0.3s ease;
        }

        .your-donations-button:hover {
            background-color: #0056b3;
        }

        .donate-container {
            text-align: center;
            margin-top: 2em;
        }

        .donate-container h2 {
            color: lime;
            font-size: 2em;
        }

        .donate-container p {
            margin: 1em 0;
            font-style: italic;
        }

        .donate-button {
            background-color: lime;
            color: #000;
            border: none;
            padding: 1em 2em;
            font-size: 1.5em;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .donate-button:hover {
            background-color: darkgreen;
        }

        .footer {
            background-color: #333;
            color: #fff;
            padding: 2em;
            text-align: center;
        }
    </style>
</head>

<body>
    <!-- Task Bar -->
    <div class="task-bar">
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="contact.jsp">Contact</a>
    </div>

    <!-- Profile Container -->
    <div class="profile-container">
        <header class="profile-header">
            <h1 style="color: white;">PROFILE</h1>
        </header>

        <div class="profile-content">
            <div class="profile-picture">
                <img src="https://cdn-icons-png.flaticon.com/128/1077/1077012.png" alt="User Picture" id="profile-img">
            </div>

            <div class="profile-info">
                <form action="saveProfile.jsp" method="post" enctype="multipart/form-data">
                    <label for="profileImage">Upload Profile Picture:</label>
                    <input type="file" id="profileImage" name="profileImage" accept="image/*" onchange="previewImage(event)">

                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>

                    <label for="gender">Gender:</label>
                    <input type="text" id="gender" name="gender" required>

                    <label for="email">@Email:</label>
                    <input type="email" id="email" name="email" required>

                    <label for="address">Address:</label>
                    <textarea id="address" name="address" placeholder="Type your address here..." required></textarea>

                    <button type="submit" class="save-button">SAVE</button>
                </form>
                <button class="your-donations-button">YOUR DONATIONS</button>
            </div>
        </div>

        <!-- Donate Section -->
        <div class="donate-container">
            <h2>SAVE FOOD</h2>
            <p>"Not just humans, feeding animals too is a true gesture of compassion."</p>
            <button class="donate-button">DONATE</button>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        &copy; 2024 Feed The Forgotten. All rights reserved.
    </footer>

    <script>
        function previewImage(event) {
            var reader = new FileReader();
            reader.onload = function() {
                var output = document.getElementById('profile-img');
                output.src = reader.result;
            };
            reader.readAsDataURL(event.target.files[0]);
        }
    </script>
</body>

</html>
