<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="/webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Tasks</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f6f8;
        }

        .container {
            background: #f4f6f8;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            margin-top: 60px;
            padding-top: 60px;
            padding: 30px;
            align-items:center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: 800;
        }

        input#description, input#targetDate, input#userName {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        input#description:focus, input#targetDate:focus, input#userName:focus {
            border-color: #007bff;
            outline: none;
        }

        .mb-3 {
            border: 1px solid white;
        }

        button {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 5px;
            background: #007bff;
            color: #f4f6f8;
            font-weight: 800;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        button:hover {
            background: #0056b3;
        }

        @media (max-width: 500px) {
            .container {
                padding: 20px;
            }

            h2 {
                font-size: 18px;
            }

            button {
                font-size: 14px;
            }
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
</head>
<body>
    <%@ include file="navigation.jspf" %>
    <div class="container">
        <h2>Add New Todo</h2>
        <form:form id="advanced-form" method="POST" modelAttribute="todo">
            <div class="form-group">
               
                
                <fieldset class="mb-3">
                    <label for="description">Description</label>
                    <form:input id="description" path="description" type="text" required="required" />
                    <form:errors path="description" cssClass="text-warning" />
                </fieldset>
                <fieldset class="mb-3">
                    <label for="targetDate">Target Date</label>
                    <form:input id="targetDate" path="targetDate" type="text" required="required" />
                    <form:errors path="targetDate" cssClass="text-warning" />
                </fieldset>
                <form:input id="done" path="done" type="hidden" />
                <form:input id="id" path="id" type="hidden" required="required" />
            </div>
            <button type="submit">Submit</button>
        </form:form>
    </div>
    <script src="/webjars/jquery/3.6.0/jquery.min.js"></script>
    <script src="/webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <script src="/webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript">
        $('#targetDate').datepicker({
            format: 'yyyy-mm-dd',
            startDate: "-3d"
        });
    </script>
</body>
</html>
