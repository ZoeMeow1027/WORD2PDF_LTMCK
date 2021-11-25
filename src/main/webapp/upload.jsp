<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" session="true" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Upload</title>
</head>
<body>
    <h1>Upload file</h1>
    <form action="upload" method="post" enctype="multipart/form-data">
        <h3>Account: <%= request.getSession().getAttribute("user") == null ? "Unknown" : request.getSession().getAttribute("user").toString() %></h3>
        <label>File to upload: </label><input type="file" name="file"><br>
        <br>
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
        <a href="index"><input type="button" value="Return back"></a>
    </form>
</body>
</html>
