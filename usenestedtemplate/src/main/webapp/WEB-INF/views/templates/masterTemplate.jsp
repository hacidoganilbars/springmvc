<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Master Template</title>
</head>
<body>
	<a href="${pageContext.request.contextPath }/home">Home</a>|
	<a href="${pageContext.request.contextPath }/aboutus">About Us</a>|
	<a href="${pageContext.request.contextPath }/news">News</a>
	<br>
	<tiles:insertAttribute name="content"></tiles:insertAttribute>
	<br> Copyright ilbars

</body>
</html>