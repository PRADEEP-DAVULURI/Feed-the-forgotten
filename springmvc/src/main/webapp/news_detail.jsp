<%@ page import="java.util.Map, java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Wastage News - Detail</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: black;
        }

        .navbar {
            background-color: #023047;
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
            transition: color 0.2s;
        }

        .navbar a:hover {
            color: limegreen;
        }

        .news-detail-container {
            max-width: 800px;
            margin: 40px auto;
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            position: relative; /* Added for positioning the heart animation */
        }

        .news-detail-container img {
            width: 100%;
            height: auto;
            border-radius: 5px;
            position: relative; /* Allow absolute positioning of the heart animation */
        }

        .news-detail-container h1 {
            font-size: 28px;
            margin: 20px 0;
        }

        .news-detail-container p {
            font-size: 16px;
            line-height: 1.6;
            color: #555;
        }

        .interaction-icons {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        .interaction-icons i {
            font-size: 30px;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .interaction-icons .fa-heart {
            color: #444;
        }

        .interaction-icons .fa-heart.liked {
            color: red;
            size: 40px;
            animation: blast 3s ease forwards; /* Animation applied to heart when liked */
        }

        @keyframes blast {
            20% {
                transform: scale(5);
                opacity: 1;
                position: absolute; /* Allow it to move freely */
                top: 50%; /* Start at the center vertically */
                left: 50%; /* Start at the center horizontally */
                transform: translate(-50%, -50%); /* Center the heart */
            }
            50% {
                transform: scale(5); /* Scale up */
                top: 30%; /* Move up */
                opacity: 10;
            }
            100% {
                opacity: 100; /* Fade out */
                transform: translate(-50%, -150%); /* Move further up */
            }
        }

        .comment-section {
            margin-top: 20px;
        }

        .comment-section textarea {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border-radius: 5px;
            border: 1px solid #ccc;
            resize: none;
        }

        .comment-section button {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .comment-section button:hover {
            background-color: #45a049;
        }

        footer {
            text-align: center;
            margin-top: 40px;
            font-size: 14px;
            color: #777;
        }

        footer a {
            color: #4CAF50;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }

        /* Heart Animation */
        #heart-animation {
            position: absolute; /* Make sure it moves relative to the parent */
            display: none;
            z-index: 10; /* Bring it in front of other elements */
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
    </div>

    <!-- News Detail Container -->
    <div class="news-detail-container">
        <%
            // Mock news data (simulating a database or list of news articles)
            Map<String, Map<String, String>> newsData = new HashMap<>();

            String[] imageUrls = {
                "https://i0.wp.com/consciouscharcha.com/wp-content/uploads/2023/06/Blog-images.png?resize=960%2C640&ssl=1",
                "https://t4.ftcdn.net/jpg/05/60/56/31/360_F_560563108_3ml8FCwRdcg38foD5T99PpkgtqccG96i.jpg",
                "https://media.market.us/wp-content/uploads/2023/07/global-food-waste-by-sector.png",
                "https://www.cdfa.ca.gov/is/foodrecovery/images/hierarchy_default.png",
                "https://waste-management-world.com/imager/media/wasteManagementWorld/808801/3265_b0464c6958b2ce61ced917e5958dc330.jpg"
            };
            String[] titles = {
                "UN Report: 1/3 of Food is Wasted",
                "Local Initiatives Reduce Food Waste by 30%",
                "Global Food Loss and Waste: A Comprehensive Overview",
                "Successful Food Recovery Programs Saving Millions",
                "Study Shows Households Waste 40% of Food Purchased"
            };
            String[] fullDescriptions = {
                "According to the UN, approximately 1.3 billion tons of food is wasted globally each year, representing one-third of all food produced for human consumption. This waste has serious implications for food security and environmental sustainability. Food wastage contributes significantly to greenhouse gas emissions and environmental degradation, and reducing it is essential for a sustainable future.",
                "Recent studies reveal that local initiatives aimed at reducing food waste have successfully cut waste by 30%, helping to provide food to those in need while reducing landfill overflow. Many local communities have organized food recovery efforts, educating residents about proper storage methods, and donating surplus food to shelters.",
                "The FAO reports that food loss and waste account for about 24% of water used for agriculture and are a major contributor to climate change. Efforts are underway to mitigate these issues through education and policy reform. Global awareness campaigns are helping to drive change, encouraging both governments and individuals to take action.",
                "Food recovery programs have proven successful in redirecting surplus food from landfills to those in need. In 2021, such programs saved over 1 million tons of food, significantly benefiting local communities. Organizations are working to streamline distribution channels and maximize the efficiency of food recovery.",
                "A recent survey found that households waste nearly 40% of food they purchase. This highlights the need for consumer education on food storage and meal planning to minimize waste. Properly planning meals, understanding expiration dates, and creative cooking can help minimize household food wastage."
            };

            // Populating the newsData map
            for (int i = 0; i < titles.length; i++) {
                Map<String, String> news = new HashMap<>();
                news.put("title", titles[i]);
                news.put("description", fullDescriptions[i]);
                news.put("imageUrl", imageUrls[i]);
                newsData.put(String.valueOf(i + 1), news);
            }

            // Get the newsId from request parameter
            String newsId = request.getParameter("newsId");
            if (newsId != null && newsData.containsKey(newsId)) {
                Map<String, String> news = newsData.get(newsId);
        %>
                <img src="<%= news.get("imageUrl") %>" alt="News Image">
                <h1><%= news.get("title") %></h1>
                <p><%= news.get("description") %></p>

                <!-- Interaction Icons -->
                <div class="interaction-icons">
                    <i class="fas fa-heart" id="like-icon"></i>
                    <i class="fas fa-comment" id="comment-icon"></i>
                    <i class="fas fa-share" id="share-icon"></i>
                    <i class="fas fa-bookmark" id="save-icon"></i>
                </div>

                <!-- Comment Section -->
                <div class="comment-section" id="comment-section" style="display: none;">
                    <textarea id="comment-box" rows="3" placeholder="Add a comment..."></textarea><br>
                    <button id="comment-submit">Post Comment</button>
                </div>

                <!-- Heart Animation Placeholder -->
                <div id="heart-animation" style="display: none;">
                    <i class="fas fa-heart" style="font-size: 40px; color: red;"></i> <!-- You can customize this further -->
                </div>
        <%
            } else {
        %>
                <h1>News Article Not Found</h1>
                <p>The news article you are looking for could not be found. Please go back and try again.</p>
        <%
            }
        %>
    </div>

    <footer>
        <p>&copy; 2024 Food Wastage Awareness. <a href="#">Privacy Policy</a></p>
    </footer>

    <script>
        const likeIcon = document.getElementById('like-icon');
        const commentIcon = document.getElementById('comment-icon');
        const commentSection = document.getElementById('comment-section');
        const commentBox = document.getElementById('comment-box');
        const commentSubmit = document.getElementById('comment-submit');
        const heartAnimation = document.getElementById('heart-animation');
        const saveIcon = document.getElementById('save-icon'); // Add the save icon reference

        let isLiked = false;

        likeIcon.addEventListener('click', () => {
            isLiked = !isLiked;
            if (isLiked) {
                likeIcon.classList.add('liked');
                heartAnimation.style.display = 'block';
                heartAnimation.style.top = '30%'; // Adjust as necessary for vertical positioning
                heartAnimation.style.left = '50%'; // Center horizontally
                heartAnimation.style.transform = 'translate(-50%, -50%)'; // Center it correctly
                setTimeout(() => heartAnimation.style.display = 'none', 1000); // Hide after 1 second
            } else {
                likeIcon.classList.remove('liked');
            }
        });

        commentIcon.addEventListener('click', () => {
            commentSection.style.display = commentSection.style.display === 'none' ? 'block' : 'none';
            commentBox.focus();
        });

        commentSubmit.addEventListener('click', () => {
            const commentText = commentBox.value.trim();
            if (commentText) {
                alert(`Comment posted: ${commentText}`);
                commentBox.value = ''; // Clear the input
                commentSection.style.display = 'none'; // Hide the comment section
            } else {
                alert('Please enter a comment.');
            }
        });

        saveIcon.addEventListener('click', () => {
            alert('Article saved!'); // Placeholder for save functionality
            // Here you could implement functionality to save the article
        });
    </script>
</body>
</html>
