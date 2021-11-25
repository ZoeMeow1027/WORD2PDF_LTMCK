<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@ page language="java" import="model.bean.PDF2XLS" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Dashboard</title>
</head>
<body>
    <table border="1" width="100%">
        <caption><h1>Dashboard</h1></caption>
        <tr>
            <th>ID</th>
            <th>Source name</th>
            <th>Status</th>
            <th>Download</th>
        </tr>
        <%
            ArrayList<PDF2XLS> data = (ArrayList<PDF2XLS>)request.getAttribute("data");
            for (int i = 0; i < data.size(); i++) {
        %>
            <tr>
                <td><%= data.get(i).getID() %></td>
                <td><%= data.get(i).getSourceName() %></td>
                <td><%= data.get(i).getResultString() %></td>
                <td><a href="">Download</a></td>
            </tr>
        <% } %>
    </table>
    <a href="dashboard"><h3>Refresh</h3></a>
    <a href="index"><h3>Return back</h3></a>
</body>
</html>
