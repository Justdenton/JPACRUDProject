<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <title>Fraud Indicators</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <style>
        .image-link img {
            max-width: 100%; 
            height: auto;
        }
        .btn-custom {
            width: 100%; 
            white-space: nowrap; 
        }
        .table-container {
            margin-top: 1rem;
        }
        .form-group form {
            display: flex;
            flex-direction: column;
        }
        .form-group input,
        .form-group button {
            width: 100%; 
        }
    </style>
    
</head>


<body>

    <div class="container mt-4">
        <h1>Fraud Indicators</h1>

        <div class="table-container">
            <table class="table table-borderless">
                <tbody>
                
                    <!-- BUTTON -->
                    <tr>
                        <td colspan="2" class="text-center">
                            <a href="list.do" class="btn btn-info btn-custom">View Entire List of Fraud Indicators</a>
                        </td>
                    </tr>
                    
                    <!-- FORMS (row) -->
                    <tr>
                        <td>
                            <!-- ID -->
                            <div class="form-group">
                                <form action="searchById.do" method="get">
                                    <input type="number" id="id" name="id" class="form-control" required>
                                    <button type="submit" class="btn btn-primary mt-2">Search by ID</button>
                                </form>
                            </div>
                        </td>
                        <td>
                            <!-- KEYWORD -->
                            <div class="form-group">
                                <form action="searchByKeyword.do" method="get">
                                    <input type="text" id="keyword" name="keyword" class="form-control">
                                    <button type="submit" class="btn btn-primary mt-2">Search by Keyword</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <p class="mt-4">With millions of insurance claims being processed annually, insurance fraud remains a pervasive issue that poses significant challenges in the United States.</p>

        <ul>
            <li>An estimated 20% of insurance claims are fraudulent.</li>
            <li>Fraud is the second-most costly white-collar crime in America, after tax evasion.</li>
            <li>Insurance fraud results in higher premiums for consumers, as well as higher taxes and inflation on consumer goods.</li>
            <li>The Coalition Against Insurance Fraud reports that 78% of consumers are concerned about insurance fraud.</li>
            <li>Insurance fraud is a federal offense under the Violent Crime Control and Law Enforcement Act of 1994, which allows the federal government to address the issue when interstate commerce is involved.</li>
            <li>On the state level, all 50 states and the District of Columbia regard insurance fraud as a crime for at least some types of insurance, with insurer fraud being a specific crime in 30 states.</li>
        </ul>

        <!-- IMAGE LINKS (1 row) -->
        <div class="row mt-4">
            <div class="col-md-3 text-center">
                <a href="https://www.nicb.org/how-we-help/report-fraud" target="_blank">
                    <img src="https://www.nicb.org/sites/files/2024-05/nicb-logo.svg" alt="NICB Logo" class="img-fluid">
                </a>
            </div>
            <div class="col-md-3 text-center">
                <a href="https://www.carfax.com/vehicle-history-reports/" target="_blank">
                    <img src="https://static.carfax.com/global-header/imgs/logo.svg" alt="Carfax Logo" class="img-fluid">
                </a>
            </div>
            <div class="col-md-3 text-center">
                <a href="https://vincheck.info/free-license-plate-lookup" target="_blank">
                    <img src="https://vincheck.info/wp-content/uploads/2017/08/vincheck_logo-1.png" alt="VINCheck Logo" class="img-fluid">
                </a>
            </div>
            <div class="col-md-3 text-center">
                <a href="https://login.lexisnexisrisk.com/idslogin/" target="_blank">
                    <img src="https://login.lexisnexisrisk.com/idslogin/vendor/img/lexisnexis_logo.png" alt="LexisNexis Logo" class="img-fluid">
                </a>
            </div>
        </div>

    </div>
    
    
    
</body>



</html>



