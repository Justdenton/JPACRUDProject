<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title><c:choose>
             <c:when test="${not empty fraudIndicator.id}">Update Fraud Indicator</c:when>
             <c:otherwise>Add New Fraud Indicator</c:otherwise>
         </c:choose></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>


<body>

    <div class="container mt-4">
        <h1><c:choose>
             <c:when test="${not empty fraudIndicator.id}">Update Fraud Indicator</c:when>
             <c:otherwise>Add New Fraud Indicator</c:otherwise>
         </c:choose></h1>

        <form action="<c:choose>
                         <c:when test="${not empty fraudIndicator.id}">update.do</c:when>
                         <c:otherwise>create.do</c:otherwise>
                     </c:choose>" method="post">
            <input type="hidden" name="id" value="${fraudIndicator.id}">
            <div class="form-group">
                <label for="description">Description</label>
                <input type="text" class="form-control" id="description" name="description" value="${fraudIndicator.description}" required>
            </div>
            <div class="form-group">
                <label for="category">Category</label>
                <input type="text" class="form-control" id="category" name="category" value="${fraudIndicator.category}" required>
            </div>

            <button type="submit" class="btn btn-primary">
                <c:choose>
                    <c:when test="${not empty fraudIndicator.id}">Update</c:when>
                    <c:otherwise>Add</c:otherwise>
                </c:choose>
            </button>
            <a class="btn btn-secondary" href="home.do">Cancel</a>
        </form>
    </div>
    
    
</body>


</html>


