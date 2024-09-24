<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>

    <div class="container mt-4">
        <h1>Search Results</h1>
        
        <c:if test="${not empty searchResults}">
            <ul class="list-group">
                <c:forEach var="fraudIndicator" items="${searchResults}">
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <div>
                            <p><strong>${fraudIndicator.description}</strong></p>
                            <ul>
                                <li>Category: ${fraudIndicator.category}</li>
                                <li>Date Last Modified: ${fraudIndicator.updateDate}</li>
                            </ul>
                        </div>
                        <a href="details.do?id=${fraudIndicator.id}" class="btn btn-info">View Details</a>
                    </li>
                </c:forEach>
            </ul>
        </c:if>
        
        <c:if test="${empty searchResults}">
            <p>No results found for your search.</p>
        </c:if>
        
        <a href="home.do" class="btn btn-primary mt-3">Back to Home</a>
    </div>


</body>


</html>


