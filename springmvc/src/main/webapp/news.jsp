<%@ page import="java.util.List, java.util.Map, java.util.ArrayList, java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Food Wastage News</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: black;
        }

        .navbar {
            background-color: #023047; /* Example color */
            padding: 10px;
            text-align: center;
        }

        .navbar a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            text-align: center;
            margin: 0 10px;
            font-weight: bold;
        }

       .navbar a:hover {
    color: limegreen; /* Change text color to lime green */
    background-color: transparent; /* No background color */
}

        .news-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .news-item {
            border: 1px solid #ccc;
            border-radius: 5px;
            margin: 10px;
            padding: 10px;
            width: 300px;
            background-color: white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            cursor: pointer;
            transition: transform 0.2s;
        }

        .news-item:hover {
            transform: scale(1.02);
        }

        .news-item img {
            width: 100%;
            height: auto;
            border-radius: 5px 5px 0 0;
        }

        .news-item h3 {
            font-size: 18px;
            margin: 10px 0;
        }

        .news-item p {
            font-size: 14px;
            color: #555;
        }

        .pagination {
            margin: 20px 0;
            text-align: center;
        }

        .pagination a {
            margin: 0 5px;
            text-decoration: none;
            color: blue;
            font-weight: bold;
        }

        footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }

        footer a {
            color: #4CAF50; /* Example footer link color */
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <!-- Task Bar -->
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="donate.jsp">Donate</a>
        <a href="news.jsp">News</a>
        <a href="contact.jsp">Contact Us</a> 
        <div class="right-buttons">
            <a href="signup.jsp" class="button">Signup</a>
            <a href="login.jsp" class="button">Login</a>
        </div>
    </div>
 
    <div class="news-container">
        <%
            List<Map<String, String>> newsData = new ArrayList<>();
            String[] imageUrls = {
                "https://via.placeholder.com/600x200?text=Food+Wastage+Statistics",
                "https://via.placeholder.com/600x200?text=Food+Waste+Initiative",
                "https://via.placeholder.com/600x200?text=Global+Food+Loss",
                "https://via.placeholder.com/600x200?text=Food+Recovery+Program",
                "https://via.placeholder.com/600x200?text=Consumer+Food+Waste"
            };
            String[] titles = {
                "UN Report: 1/3 of Food is Wasted",
                "Local Initiatives Reduce Food Waste by 30%",
                "Global Food Loss and Waste: A Comprehensive Overview",
                "Successful Food Recovery Programs Saving Millions",
                "Study Shows Households Waste 40% of Food Purchased"
            };
            String[] descriptions = {
                "According to the UN, approximately 1.3 billion tons of food is wasted globally each year, representing one-third of all food produced for human consumption. This waste has serious implications for food security and environmental sustainability.",
                "Recent studies reveal that local initiatives aimed at reducing food waste have successfully cut waste by 30%, helping to provide food to those in need while reducing landfill overflow.",
                "The FAO reports that food loss and waste account for about 24% of water used for agriculture and are a major contributor to climate change. Efforts are underway to mitigate these issues through education and policy reform.",
                "Food recovery programs have proven successful in redirecting surplus food from landfills to those in need. In 2021, such programs saved over 1 million tons of food, significantly benefiting local communities.",
                "A recent survey found that households waste nearly 40% of food they purchase. This highlights the need for consumer education on food storage and meal planning to minimize waste."
            };
            String[] fullUrls = {
                "news_detail.jsp?newsId=1",
                "news_detail.jsp?newsId=2",
                "news_detail.jsp?newsId=3",
                "news_detail.jsp?newsId=4",
                "news_detail.jsp?newsId=5"
            };

            // Initialize news data
            for (int i = 0; i < titles.length; i++) {
                Map<String, String> news = new HashMap<>();
                news.put("title", titles[i]);
                news.put("description", descriptions[i]);
                news.put("imageUrl", imageUrls[i]);
                news.put("fullUrl", fullUrls[i]);
                newsData.add(news);
            }

            // Pagination logic
            int itemsPerPage = 10; // Number of news items per page
            String pageParam = request.getParameter("page");
            int currentPage = 1; // Use a different variable name to avoid duplication
            if (pageParam != null) {
                currentPage = Integer.parseInt(pageParam);
            }

            int start = (currentPage - 1) * itemsPerPage;
            int end = Math.min(start + itemsPerPage, newsData.size());

            // Display news items
            for (int i = start; i < end; i++) {
                Map<String, String> news = newsData.get(i);
        %>
                <div class="news-item" onclick="location.href='<%= news.get("fullUrl") %>';">
                    <img src="<%= news.get("imageUrl") %>" alt="News Image">
                    <h3><%= news.get("title") %></h3>
                    <p><%= news.get("description") %></p>
                </div>
        <%
            }
        %>
    </div>
    
    <!-- Pagination Controls -->
    <div class="pagination">
        <%
            int totalPages = (int) Math.ceil((double) newsData.size() / itemsPerPage);
            for (int i = 1; i <= totalPages; i++) {
        %>
            <a href="news.jsp?page=<%= i %>"><%= i %></a>
        <%
            }
        %>
    </div>

    <!-- Footer -->
    <footer>
        <p>© 2024 Feed The Forgotten | All rights reserved.</p>
        <p><a href="privacy.jsp">Privacy Policy</a> | <a href="terms.jsp">Terms of Service</a></p>
    </footer>
</body>
</html>
