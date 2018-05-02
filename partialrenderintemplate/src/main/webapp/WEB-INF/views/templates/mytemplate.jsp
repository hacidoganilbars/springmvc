<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="category" uri="categoryTag"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Template</title>

</head>
<body>
	<table border="1" cellpadding="5" cellspacing="5" width="500">
		<tr>
			<td colspan="2"><a
				href="${pageContext.request.contextPath }/home">Home</a>| <a
				href="${pageContext.request.contextPath }/aboutus">About Us</a>| <a
				href="${pageContext.request.contextPath }/news">News</a></td>
		</tr>

		<tr>
			<td valign="top" align="left" width="200"><category:categoriesList />
			</td>
			<td><tiles:insertAttribute name="content"></tiles:insertAttribute>
			</td>
		</tr>
		<tr>
			<td colspan="2">CopyRight ilbars</td>
		</tr>

	</table>
</body>
</html>