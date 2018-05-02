<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Product</title>
</head>
<body>
	<h3>Update Product</h3>
	<s:form method="post" modelAttribute="product"
		action="${pageContext.request.contextPath }/product/save">

		<table border="0" cellpadding="2" cellspacing="2">
			<tr>
				<td>Id</td>
				<td><s:input path="id" /></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><s:input path="name" /></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><s:input path="price" /></td>
			</tr>
			<tr>
				<td>Quantity</td>
				<td><s:input path="quantity" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><s:textarea path="description" /></td>
			</tr>
			<tr>
				<td>Status</td>
				<td><s:checkbox path="status" /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Save"></td>
			</tr>

		</table>

	</s:form>
</body>
</html>