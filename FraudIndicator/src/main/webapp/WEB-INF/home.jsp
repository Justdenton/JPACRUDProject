<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <title>Fraud Indicators</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .image-link {
            display: block;
            margin-bottom: 20px;
        }
        .image-link img {
            max-width: 100%; 
            height: auto;
        }
    </style>
</head>

<body>

    <div class="container mt-4">
        <h1>Fraud Indicators</h1>

        <!-- ID Form -->
        <form action="searchById.do" method="get">
            <label for="id">Search by ID:</label>
            <input type="number" id="id" name="id" class="form-control" required>
            <button type="submit" class="btn btn-primary mt-2">Search by ID</button>
        </form>

      	<!-- Keyword Form (attempting to direct to result.jsp) -->
		<form action="searchByKeyword.do" method="get" class="mt-4">
   			<label for="keyword">Search by keyword:</label>
    		<input type="text" id="keyword" name="keyword" class="form-control">
    		<button type="submit" class="btn btn-primary mt-2">Search by Keyword</button>
		</form>
       

        <p class="mt-4">With millions of insurance claims being processed annually, insurance fraud remains a pervasive issue that poses significant challenges in the United States.</p>
        
        <ul>
            <li>An estimated 20% of insurance claims are fraudulent.</li>
            <li>Fraud is the second-most costly white-collar crime in America, after tax evasion.</li>
            <li>Insurance fraud results in higher premiums for consumers, as well as higher taxes and inflation on consumer goods.</li>
            <li>The Coalition Against Insurance Fraud reports that 78% of consumers are concerned about insurance fraud.</li>
            <li>Somewhere between 1.3 and 2.1 million people each month in 2020 were intentionally misclassified as independent contractors or paid off the books, a fraudulent tactic used by employers to reduce their workers’ compensation premiums.</li>
            <li>Insurance fraud is a federal offense under the Violent Crime Control and Law Enforcement Act of 1994, which allows the federal government to address the issue when interstate commerce is involved.</li>
            <li>On the state level, all 50 states and the District of Columbia regard insurance fraud as a crime for at least some types of insurance, with insurer fraud being a specific crime in 30 states.</li>
        </ul>

        
        <div class="image-link">
            <a href="https://www.nicb.org/how-we-help/report-fraud" target="_blank">
                <img src="https://www.nicb.org/sites/files/2024-05/nicb-logo.svg" alt="NICB Logo">
            </a>
        </div>
        
        <div class="image-link">
            <a href="https://www.carfax.com/vehicle-history-reports/" target="_blank">
                <img src="https://static.carfax.com/global-header/imgs/logo.svg" alt="Carfax Logo">
            </a>
        </div>
        

        <a href="list.do" class="btn btn-info">View Entire List of Fraud Indicators</a>
    </div>
    
    
</body>


</html>


