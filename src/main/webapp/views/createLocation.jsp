<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Location</title>
</head>
<body>
<h1>Add Location Here</h1>

<form action="saveLoc" method="post">
<pre>
ID:   <input type="text" name="id" placeholder="Enter Id"/>
<br>
Code: <input type="text" name="code" placeholder="Enter Code" />
<br>
Name: <input type="text" name="name" placeholder="Enter Name" />
<br>
Type: Urban <input type="radio" name="type" value="URBAN"/>
      Rural <input type="radio" name="type" value="RURAL"/>
<br>
<input type="submit" value="save" />

</pre>
</form>
${msg}
<br>
<a href="displayLocations">View All Locations</a>
</body>
</html>