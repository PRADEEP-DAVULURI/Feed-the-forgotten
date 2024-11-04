
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donate Food</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        .trust-list, .message {
            margin: 20px 0;
        }
        .trust-item {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            margin: 5px 0;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .trust-item:hover {
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

<h2>Select a Trust to Donate Food</h2>
<div class="trust-list">
    <div class="trust-item" onclick="sendDonationRequest('Trust 1')">Trust 1</div>
    <div class="trust-item" onclick="sendDonationRequest('Trust 2')">Trust 2</div>
    <div class="trust-item" onclick="sendDonationRequest('Trust 3')">Trust 3</div>
    <!-- Add more trusts as needed -->
</div>

<div class="message" id="message"></div>

<script>
    function sendDonationRequest(trustName) {
        // Simulate an API call to donate food
        const success = Math.random() > 0.5; // Simulating success/failure randomly
        const messageElement = document.getElementById('message');

        if (success) {
            messageElement.innerHTML = `<span class="success">Donation request to ${trustName} accepted! ✔️</span>`;
        } else {
            messageElement.innerHTML = `<span class="failure">Donation request to ${trustName} failed! ❌</span>`;
        }
    }
</script>

</body>
</html>
