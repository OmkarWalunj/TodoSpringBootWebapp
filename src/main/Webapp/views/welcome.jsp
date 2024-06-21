
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f6f8;
        }
        .container {
            text-align: center;
            background: #f4f6f8;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 40px auto;
			margin-top:90px;
        }
        h1 {
            color: #e67e7e;
        }
        p {
            color: #666;
            font-size: x-large;
        }
        .navbar-custom {
            background-color: #343a40; /* Dark gray background */
        }

        .navbar-custom .navbar-brand {
            color: #f8f9fa; /* Light color for brand */
            font-size: 1.5em; /* Increase brand font size */
        }

        .navbar-custom .nav-link {
            color: #ffc107; /* Gold color for links */
            font-size: 1.2em; /* Increase link font size */
            margin-right: 20px; /* Add spacing between links */
        }

        .navbar-custom .nav-link:hover {
            color: #dc3545; /* Red color on hover */
        }
    </style>
    <!-- Add Bootstrap CSS -->
    <link href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Include navigation bar -->
    <%@ include file="navigation.jspf" %>
    
    <div class="container">
        <h1>Welcome to Our Website!</h1>
        <h2>Username: ${username}</h2>
        <div>
            <a href="List-Service" class="btn btn-primary">Tasks</a>
        </div>
        <p>We're glad to have you here. Explore our content and feel free to get in touch if you have any questions.</p>
    </div>

    <!-- Add Bootstrap JS -->
    <script src="/webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
