<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Register</title>
</head>
<body>
	<h3>Account Register</h3>
	<s:form method="post" modelAttribute="account"
		action="${pageContext.request.contextPath }/account/register">
		<table cellpadding="2" cellspacing="2">
			<tr>
				<td>Username</td>
				<td><s:input path="username" /></td>
				<td><s:errors path="username"></s:errors></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><s:password path="password" /></td>
				<td><s:errors path="password" /></td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td><input type="submit" value="Save"></td>
			</tr>
		</table>
	</s:form>
</body>
</html>