<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 

<%-- <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> --%>	 
<%-- <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> --%>

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
        
            <!-- 
            <p>Formatted Date (6): 
            	<fmt:formatDate type = "both"  
         			dateStyle = "long" 
         			timeStyle = "long" 
         			value = "${now}" /></p>
             -->  
        
        <c:if test="${not empty searchResults}">
            <ul class="list-group">
                <c:forEach var="fraudIndicator" items="${searchResults}">
                    <li class="list-group-item">
                        <p><strong>${fraudIndicator.description}</strong></p>
                        <ul>
                            <li>Category: ${fraudIndicator.category}</li>
                            <li>Date Created: ${fraudIndicator.createDate}</li>
                            		<!-- {fraudIndicator.createDate} -->
                            	
                            	<%-- <fmt:formatDate type = "both" 
         							dateStyle = "long" 
         							timeStyle = "long" 
         							value = "${fraudIndicator.createDate}" />
         							value = "${now}" />
                            		<!-- {fraudIndicator.createDate} -->
                            </li> --%>
                            <li>Date Last Modified: ${fraudIndicator.updateDate}</li>
		                            <%-- ${fraudIndicator.updateDate} --%>
		                            
                            	<%-- <fmt:formatDate type = "both"  
         							dateStyle = "long" 
         							timeStyle = "long" 
         							value = "${fraudIndicator.updateDate}" /> --%>
         							<%-- value = "${now}" /> --%>
                        </ul>
                    </li>
                </c:forEach>
            </ul>
        </c:if>
        <c:if test="${empty searchResults}">
            <p>No results found for your search.</p>
        </c:if>
        <a href="home.do" class="btn btn-primary">Back to Home</a>
    </div>
    
    
</body>


</html>


