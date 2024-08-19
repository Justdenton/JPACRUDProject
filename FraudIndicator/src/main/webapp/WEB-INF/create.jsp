<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Add New Fraud Indicator</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>

    <div class="container mt-4">
        <h1>Add New Fraud Indicator</h1>

        <form action="create.do" method="post">
            <div class="form-group">
                <label for="description">Description</label>
                <input type="text" class="form-control" id="description" name="description" required>
            </div>
            <div class="form-group">
                <label for="category">Category</label>
                <input type="text" class="form-control" id="category" name="category" required>
            </div>

            <button type="submit" class="btn btn-primary">Add</button>
            <a class="btn btn-secondary" href="home.do">Cancel</a>
        </form>
    </div>
    
    
</body>


</html>


