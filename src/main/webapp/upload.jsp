<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" %>

<html>
<head>
    <meta content="text/html;" charset="UTF-8">
    <title>Word2PDF - Upload file</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-bottom: 3%;">
        <div class="container-fluid">
            <a class="navbar-brand" href="index">WORD2PDF</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="dashboard">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="upload">Upload</a>
                    </li>
                </ul>
            </div>
            <div>
                <span class="navbar-text">Logged in as admin&nbsp;&nbsp;</span>
                <a href="logout"><button class="btn btn-sm btn-outline-secondary" type="button">Logout</button></a>
            </div>
        </div>
    </nav>

    <div style="width: 75%; margin: auto;">
        <h1>Upload file (.docx)</h1>
        <h3>Upload a file in word format (.docx) and we will convert them.</h3><br>
        <form action="upload" method="post" enctype="multipart/form-data">
            <span class="navbar-text">File to upload:</label><br>
            <input type="file" name="file" class="btn btn-primary"><br>
            <br>
            <input type="submit" class="btn btn-primary" value="Submit">
            <input type="reset" class="btn btn-primary" value="Reset">
            <a href="index"><input type="button" class="btn btn-primary" value="Go to home"></a>
        </form>    
    </div>
</body>
</html>
