<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Full News - Feed The Forgotten</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1c1e22;
            color: #fff;
            margin: 0;
            padding: 0;
        }

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

        .full-news-container {
            padding: 2em;
            width: 80%;
            margin: auto;
            background-color: #2c2f36;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
        }

        .full-news-container img {
            width: 100%;
            border-radius: 10px;
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
        <a href="news.jsp">News</a>
    </div>

    <!-- Full News Container -->
    <div class="full-news-container">
        <% 
            int id = Integer.parseInt(request.getParameter("id"));
            String[] titles = {
                "Food Wastage Report Year 2018",
                "Food Wastage Report Year 2019",
                "Food Wastage Report Year 2020",
                "Food Wastage Report Year 2021",
                "Food Wastage Report Year 2022"
            };
            String[] details = {
                "In 2018, millions of tons of food were wasted globally, leading to significant environmental and economic impacts. Thousands died due to hunger.",
                "2019 saw an increase in food wastage due to overproduction and poor distribution channels, contributing to hunger crises worldwide.",
                "The year 2020 was marked by a pandemic that disrupted food supply chains, exacerbating food wastage and starvation.",
                "In 2021, initiatives were launched to combat food wastage, yet millions continued to suffer from food insecurity.",
                "By 2022, awareness of food wastage had increased, but the gap between wasted food and those in need remained vast."
            };
            String[] images = {
                "https://via.placeholder.com/600x200?text=Food+Wastage+2018",
                "https://via.placeholder.com/600x200?text=Food+Wastage+2019",
                "https://via.placeholder.com/600x200?text=Food+Wastage+2020",
                "https://via.placeholder.com/600x200?text=Food+Wastage+2021",
                "https://via.placeholder.com/600x200?text=Food+Wastage+2022"
            };
        %>
        <h1><%= titles[id % titles.length] %></h1>
        <img src="<%= images[id % images.length] %>" alt="News Image">
        <p><%= details[id % details.length] %></p>
    </div>

    <!-- Footer -->
    <footer class="footer">
        &copy; 2024 Feed The Forgotten. All rights reserved.
    </footer>
</body>

</html>
