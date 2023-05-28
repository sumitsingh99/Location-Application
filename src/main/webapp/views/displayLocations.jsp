<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>All Location</title>
    <style>
        table, th, td {
            border: 1px solid #131313;
            border-collapse: collapse;
            padding: 1px;
        }
        th{
            background-color: yellow;
        }
    </style>
</head>
<body>
<h2>Locations</h2>

<table>
    <tr>
        <th>Id</th>
        <th>Code</th>
        <th>Name</th>
        <th>Type</th>
    </tr>
    <c:forEach items="${locations}" var="loc">
    <tr>
        <td>${loc.id}</td>
        <td>${loc.code}</td>
        <td>${loc.name}</td>
        <td>${loc.type}</td>
        <td><a href="deleteLocation?id=${loc.id}">Delete</a></td>
        <td><a href="updateLocation?id=${loc.id}">Edit</a></td>
    </tr>
    </c:forEach>
</table>
<br>
<a href="createLocation">Add Location</a>
</body>
</html>