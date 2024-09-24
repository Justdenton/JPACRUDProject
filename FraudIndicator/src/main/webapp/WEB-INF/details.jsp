<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Fraud Indicator Details</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .btn-custom {
            width: 100%; 
            max-width: 150px; 
        }
    </style>
</head>

<body>

    <div class="container mt-4">
        <h1>Fraud Indicator Details</h1>
        
        <c:if test="${not empty fraudIndicator}">
            <dl class="row">
                <dt class="col-sm-3">Description</dt>
                <dd class="col-sm-9">${fraudIndicator.description}</dd>
                
                <dt class="col-sm-3">Category</dt>
                <dd class="col-sm-9">${fraudIndicator.category}</dd>
                
                <dt class="col-sm-3">Date Created</dt>
                <dd class="col-sm-9">${fraudIndicator.createDate}</dd>
                
                <dt class="col-sm-3">Date Last Modified</dt>
                <dd class="col-sm-9">${fraudIndicator.updateDate}</dd>
            </dl>

            <div class="row mt-3">
            
                <!-- BUTTONS (Left) -->
                <div class="col-md-6 d-flex flex-column">
                    <a class="btn btn-primary btn-custom mb-2" href="update.do?id=${fraudIndicator.id}">Update</a>
                    <form action="delete.do" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="${fraudIndicator.id}">
                        <button type="submit" class="btn btn-danger btn-custom">Delete</button>
                    </form>
                </div>

                <!-- BUTTONS (Right) -->
                <div class="col-md-6 d-flex flex-column align-items-end">
                    <a class="btn btn-secondary btn-custom mb-2" href="list.do">Full List of Indicators</a>
                    <a class="btn btn-primary btn-custom" href="home.do">Back to Home</a>
                </div>
            </div>

        </c:if>
        
        <c:if test="${empty fraudIndicator}">
            <p>No fraud indicator found with the specified ID.</p>
            <div class="d-flex justify-content-center mt-3">
                <a class="btn btn-secondary btn-custom mx-1" href="list.do">Back to List</a>
                <a class="btn btn-primary btn-custom mx-1" href="home.do">Back to Home</a>
            </div>
        </c:if>
    </div>
    

</body>

 
</html>


