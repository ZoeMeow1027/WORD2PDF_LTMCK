<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@ page language="java" import="model.bean.WORD2PDF" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Dashboard</title>
</head>
<style>
    body { text-align: center;
        background-color: #F0F8FF;
        }
</style>
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
            ArrayList<WORD2PDF> data = (ArrayList<WORD2PDF>)request.getAttribute("data");
            for (int i = 0; i < data.size(); i++) {
        %>
            <tr>
                <td><%= data.get(i).getID() %></td>
                <td><%= data.get(i).getSourceName() %></td>
                <td><%= data.get(i).getResultString() %></td>
                <td><a href="download?id=<%= data.get(i).getID() %>">Download</a></td>
            </tr>
        <% } %>
    </table>
    <h3>Logged in as <%= request.getSession().getAttribute("user") == null ? "Unknown" : request.getSession().getAttribute("user").toString() %></h3>
	<a href="dashboard"><input type="button" value="Refresh"></a><br>
	<br>
	<a href="upload"><input type="button" value="New Convert"></a><br>
	<br>
	<a href="logout"><input type="button" value="Log Out"></a><br>
	<br>
</body>
</html>
