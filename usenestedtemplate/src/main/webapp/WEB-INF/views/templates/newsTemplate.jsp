<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

	<br>
	<a href="${pageContext.request.contextPath }/news/news1">News 1</a>|
	<a href="${pageContext.request.contextPath }/news/news2">News 2</a>|
	<a href="${pageContext.request.contextPath }/news/news3">News 3</a>
	<br>
	<br>
	<tiles:insertAttribute name="newsContent"></tiles:insertAttribute>