<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Demo Page</title>
</head>
<body>
	<a href="${pageContextr.request.contextPath }/demo?lang=en">English</a>
	<a href="${pageContextr.request.contextPath }/demo?lang=tr">Turkish</a>
	<a href="${pageContextr.request.contextPath }/demo?lang=fr">French</a>
	<a href="${pageContextr.request.contextPath }/demo?lang=de">German</a>
	<br>
	<s:message code="greeting"></s:message>

</body>
</html>