<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Location</title>
</head>
<body>
<h2>Update Location</h2>

<form action="updateLoc" method="post">
<pre>
ID:   <input type="text" name="id" value="${location.id}" readonly/>
<br>
Code: <input type="text" name="code" value="${location.code}" />
<br>
Name: <input type="text" name="name" value="${location.name}" />
<br>
Type: Urban <input type="radio" name="type" value="URBAN" ${location.type=='URBAN'?'checked':''}/>
      Rural <input type="radio" name="type" value="RURAL"${location.type=='RURAL'?'checked':''}/>
<br>
<input type="submit" value="save" name="Update" />

</pre>
</form>
</body>
</html>