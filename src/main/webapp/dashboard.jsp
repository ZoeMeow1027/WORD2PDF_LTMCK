<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@ page language="java" import="model.bean.WORD2PDF" %>
<%@ page language="java" import="java.sql.Timestamp" %>
<%@ page language="java" import="java.text.SimpleDateFormat" %>

<html>
<head>
    <meta content="text/html;" charset="UTF-8">
    <title>Word2PDF - Dashboard</title>
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
                        <a class="nav-link active" href="dashboard">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="upload">Upload</a>
                    </li>
                </ul>
            </div>
            <div>
                <span class="navbar-text">Logged in as <%= request.getSession().getAttribute("user") == null ? "Unknown" : request.getSession().getAttribute("user").toString() %>&nbsp;&nbsp;</span>
                <a href="logout"><button class="btn btn-sm btn-outline-secondary" type="button">Logout</button></a>
            </div>
        </div>
    </nav>

    <div style="width: 75%; margin: auto;">
        <h1>Dashboard</h1>
        <h3>Show processing info about file which user uploaded.</h3>

        <table border="1" width=100%>
            <tr>
                <th>ID</th>
                <th>Source name</th>
                <th>Date added</th>
                <th>Date completed</th>
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
                    <td><% try { out.print(new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(data.get(i).getDateStart())); } catch (Exception ex) {  } %></td>
                    <td><% try { out.print(new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(data.get(i).getDateCompleted())); } catch (Exception ex) {  } %></td>
                    <td><%= data.get(i).getResultString() %></td>
                    <td><a href="download?id=<%= data.get(i).getID() %>">Download</a></td>
                </tr>
            <% } %>
        </table>
        <br>
        <a href=""><button type="button" class="btn btn-primary">Refresh dashboard</button></a>
    </div>
</body>
</html>
