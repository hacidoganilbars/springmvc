<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
</head>
<body>
	<h3>Product List</h3>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Description</th>
			<th>Status</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Option</th>
		</tr>
		<c:forEach var="product" items="${products}">
			<tr>
				<td>${product.id }</td>
				<td>${product.name }</td>
				<td>${product.description }</td>
				<td>${product.status }</td>
				<td>${product.price }</td>
				<td>${product.quantity }</td>
				<td><a
					href="${pageContext.request.contextPath }/product/delete/${product.id}"
					onclick="return confirm('Are you sure?')">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>