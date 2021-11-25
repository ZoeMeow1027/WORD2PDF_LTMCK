<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Upload</title>
</head>
<body>
    <h1>Upload file</h1>
    <form action="Upload" method="post">
        <label>Account: </label><label name="user">admin</label><br>
        <label>Upload file: </label><input type="file" name="file"><br>
        
        <br>
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
        <a href="index"><input type="button" value="Return back"></a>
    </form>
</body>
</html>
