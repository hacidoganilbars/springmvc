<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Cart Sayfası</title>
</head>
<body>
	<h3>Cart Sayfası</h3>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>Seçenek</th>
			<th>İd</th>
			<th>İsim</th>
			<th>Fotograf</th>
			<th>Fiyat</th>
			<th>Miktar</th>
			<th>Sub Total</th>
		</tr>
		<c:set var="toplam" value="0"></c:set>
		<c:forEach var="materyal" items="${sessionScope.cart }">
			<c:set var="toplam"
				value="${toplam + materyal.urun.fiyat*materyal.miktar}"></c:set>
			<tr>
				<td align="center"><a
					href="${pageContext.request.contextPath }/cart/remove/${materyal.urun.id}"
					onclick="return confirm('Are you sure?')">Sil</a></td>
				<td>${materyal.urun.id }</td>
				<td>${materyal.urun.isim }</td>
				<td><img
					src="${pageContext.request.contextPath }/resources/images/${materyal.urun.fotograf}"
					width="50"></td>
				<td>${materyal.urun.fiyat }</td>
				<td>${materyal.miktar }</td>
				<td>${materyal.urun.fiyat*materyal.miktar}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6" align="right">Topla</td>
			<td>${toplam }</td>
		</tr>
	</table>
	<br>
	<a href="${pageContext.request.contextPath }/urun">Alışverişe Devam</a>
</body>
</html>