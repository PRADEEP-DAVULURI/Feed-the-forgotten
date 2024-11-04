<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Save Profile - Feed The Forgotten</title>
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

        .message-container {
            text-align: center;
            padding: 2em;
            background-color: #2c2f36;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
            margin: 2em auto;
            width: 50%;
        }

        .message-container h1 {
            font-size: 2em;
            color: lime;
            margin-bottom: 1em;
        }

        .back-button {
            background-color: lime;
            color: #000;
            padding: 0.8em 2em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.2em;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .back-button:hover {
            background-color: #4caf50;
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

    <!-- Message Container -->
    <div class="message-container">
        <%
            // Retrieve user details from the request
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String email = request.getParameter("email");
            String address = request.getParameter("address");

            // Database connection details
            String url = "jdbc:mysql://localhost:3306/your_database_name";
            String user = "your_database_user";
            String password = "your_database_password";

            Connection conn = null;
            PreparedStatement pstmt = null;

            try {
                // Load the JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish the connection
                conn = DriverManager.getConnection(url, user, password);

                // Assuming user is logged in and user_id is stored in session
                int userId = (int) session.getAttribute("user_id");

                // Prepare and execute the SQL query to update user details
                String query = "UPDATE users SET name = ?, gender = ?, email = ?, address = ? WHERE user_id = ?";
                pstmt = conn.prepareStatement(query);
                pstmt.setString(1, name);
                pstmt.setString(2, gender);
                pstmt.setString(3, email);
                pstmt.setString(4, address);
                pstmt.setInt(5, userId);

                int rowsUpdated = pstmt.executeUpdate();

                if (rowsUpdated > 0) {
        %>
        <h1>Profile Updated Successfully!</h1>
        <%
                } else {
        %>
        <h1>Error: Unable to Update Profile</h1>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
        %>
        <h1>Error: Unable to Update Profile</h1>
        <%
            } finally {
                // Close the resources
                if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
                if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
            }
        %>
        <a href="profile.jsp" class="back-button">Back to Profile</a>
    </div>
</body>

</html>
