<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <title>Full List of Fraud Indicators</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .btn-custom {
            flex: 1; 
            max-width: 200px; 
            height: 40px; 
            display: flex;
            align-items: center; 
            justify-content: center; 
            margin: 0 0.5rem; 
        }
        .btn-container {
            display: flex;
            justify-content: center; 
            margin-top: 1rem;  
        }
        .footer-space {
            padding-bottom: 2rem; 
        }
    </style>
</head>

<body>

    <div class="container mt-4 footer-space">
        <h1 class="text-center">Full List of Fraud Indicators</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Description</th>
                    <th>Category</th>
                    <th>Last Modified</th>
                    <th>Actions</th> 
                </tr>
            </thead>
            <tbody>
                <c:forEach var="fraudIndicator" items="${allIndicators}">
                    <tr>
                        <td>${fraudIndicator.description}</td>
                        <td>${fraudIndicator.category}</td>
                        <td>${fraudIndicator.updateDate}</td>
                        <td>
                            <a class="btn btn-info btn-sm" href="details.do?id=${fraudIndicator.id}">View Details</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <!-- BUTTONS (row) -->
        <div class="btn-container">
            <a class="btn btn-success btn-custom" href="create.do">Add New Indicator</a>
            <a class="btn btn-primary btn-custom" href="home.do">Back to Home</a>
        </div>
        
    </div>


</body>



</html>


