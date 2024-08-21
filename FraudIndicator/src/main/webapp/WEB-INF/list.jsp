<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 

<%-- <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>	<!-- Should fix date formatting -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> --%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Full List of Fraud Indicators</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>


<body>

    <div class="container mt-4">
        <h1>Full List of Fraud Indicators</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Description</th>
                    <th>Category</th>
                    <th>Last Modified</th>
                    <th>Actions</th>
                </tr>
            </thead>
            
            <!-- 
            <p>Formatted Date (6): <fmt:formatDate type = "both" 
         		dateStyle = "long" timeStyle = "long" value = "${now}" /></p>
             -->
            
            
            <tbody>
                <c:forEach var="fraudIndicator" items="${allIndicators}">
                    <tr>
                        <td>${fraudIndicator.description}</td>
                        <td>${fraudIndicator.category}</td>
                        <td>${fraudIndicator.updateDate}</td>
                        <%-- <td>
                        	<fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${fraudIndicator.updateDate}" />
                        </td> --%>
                        <td>
                            <a class="btn btn-info btn-sm" href="update.do?id=${fraudIndicator.id}">Update</a>
                            <form action="delete.do" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="${fraudIndicator.id}">
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach> 
            </tbody>
        </table>
		
		<!-- BUTTONS -->
		<a class="btn btn-success" href="create.do">Add New Fraud Indicator</a>
        <a class="btn btn-primary mt-2" href="home.do">Back to Home</a>
        
    </div>
    
</body>


</html>


