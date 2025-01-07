<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Ticket</title>
</head>
<body>

<c:set var="t1" value="${car}"/>


<input type="text" id="rn" name="rn" value="${t1.rnum}" >
<label for="rn">Registration Number:</label><br>


<input type="text" id="na" name="na" value="${t1.name}" >
<label for="na">Name:</label><br>


<input type="email" id="em" name="em" value="${t1.email}" >
<label for="em">E-mail:</label><br>


<input type="text" id="su" name="su" value="${t1.subject}" >
<label for="su">Subject:</label><br>


<input type="text" id="de" name="de" value="${t1.descip}" >
<label for="de">Description:</label><br>

</body>
</html>
