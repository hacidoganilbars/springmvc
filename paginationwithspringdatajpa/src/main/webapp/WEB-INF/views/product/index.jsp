<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagination with Spring Data JPA in Spring MVC</title>
</head>
<body>

	<div class="container" style="margin-top: 20px;">
		<jsp:useBean beanName="pagedListHolder" scope="request"
			class="org.springframework.beans.support.PagedListHolder" />
		<c:url value="/product" var="pagedLink">
			<c:param name="p" value="~" />
		</c:url>

		<tg:paging pagedListHolder="${pagedListHolder }"
			pagedLink="${pagedLink }" />
		<table class="table table-borderer">
			<tr>
				<th width="20px">Id</th>
				<th>Name</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Status</th>
			</tr>
			<c:forEach items="${pagedListHolder.pageList }" var="item">
				<tr>
					<td>${item.id }</td>
					<td>${item.name }</td>
					<td>${item.price }</td>
					<td>${item.quantity }</td>
					<td>${item.status }</td>
				</tr>
			</c:forEach>
		</table>
		<tg:paging pagedListHolder="${pagedListHolder }"
			pagedLink="${pagedLink }" />

	</div>

</body>
</html>