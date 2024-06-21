<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task Table</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f6f8;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
        }
        th, td {
            padding: 12px;
            border: 2px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #6c757d;
            color: white;
            font-weight: 800;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:nth-child(odd) {
            background-color: #e9ecef;
        }
        tr:hover {
            background-color: #d6e0f5;
        }
        .btn-container {
            text-align: center;
            margin: 20px 0;
        }
        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s, border-color 0.3s;
        }
        .btn-success:hover {
            background-color: #218838;
            border-color: #1e7e34;
        }
        .btn-success:focus {
            box-shadow: 0 0 0 0.2rem rgba(72, 180, 97, 0.5);
        }
        .btn-delete {
            color: #fff;
            background-color: #dc3545;
            border-color: #dc3545;
            padding: 5px 10px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        .btn-delete:hover {
            background-color: #c82333;
            border-color: #bd2130;
            color: #fff;
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
    <h1>Todo List</h1>
    <table>
        <thead>
            <tr id="tablehead">
               
                <th>Description</th>
                <th>Date</th>
                <th>Done</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${alltodos}" var="todo">
                <tr>
                    
                    <td>${todo.getDescription()}</td>
                    <td>${todo.getTargetDate()}</td>
                    <td>${todo.isDone()}</td>
                    <td> <a href="delete-todo?id=${todo.getId()}" class="btn-delete" >Delete</a> </td>
                    <td> <a href="update-todo?id=${todo.getId()}" class="btn-success" >Update</a> </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div class="btn-container">
        <a href="add-todo" class="btn btn-success">Add Task</a>
    </div>
    
    <script src="/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script src="/webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>
