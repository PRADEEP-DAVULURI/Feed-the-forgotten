<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Take Food</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        .donor-list, .message {
            margin: 20px 0;
        }
        .donor-item {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            margin: 5px 0;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .donor-item:hover {
            background-color: #f0f0f0;
        }
        .success {
            color: green;
        }
        .failure {
            color: red;
        }
    </style>
</head>
<body>

<h2>Select a Donor to Take Food From</h2>
<div class="donor-list">
    <div class="donor-item" onclick="sendTakeRequest('Donor 1')">Donor 1</div>
    <div class="donor-item" onclick="sendTakeRequest('Donor 2')">Donor 2</div>
    <div class="donor-item" onclick="sendTakeRequest('Donor 3')">Donor 3</div>
    <!-- Add more donors as needed -->
</div>

<div class="message" id="message"></div>

<script>
    function sendTakeRequest(donorName) {
        // Simulate an API call to take food
        const success = Math.random() > 0.5; // Simulating success/failure randomly
        const messageElement = document.getElementById('message');

        if (success) {
            messageElement.innerHTML = `<span class="success">Food request from ${donorName} accepted! ✔️</span>`;
        } else {
            messageElement.innerHTML = `<span class="failure">Food request from ${donorName} failed! ❌</span>`;
        }
    }
</script>

</body>
</html>
