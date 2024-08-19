<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>


<body>
   
    <div class="container mt-4">
        <h1>Error!</h1>
        <p>${error}</p>
        <a href="home.do" class="btn btn-primary">Back to Home</a>
    </div>
    
    
</body>


</html>


