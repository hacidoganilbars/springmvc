<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Ürün Sayfası here</title>
</head>
<body>
	<h3>Ürün Sayfası</h3>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>İd</th>
			<th>İsim</th>
			<th>Fotograf</th>
			<th>Fiyat</th>
			<th>Satınal</th>
		</tr>
		<c:forEach var="urun" items="${urunler }">
			<tr>
				<td>${urun.id }</td>
				<td>${urun.isim }</td>
				<td><img
					src="${pageContext.request.contextPath}/resources/images/${urun.fotograf}"
					width="50"></td>
				<td>${urun.fiyat }</td>
				<td align="center"><a
					href="${pageContext.request.contextPath}/cart/buy/${urun.id}">Şimdi
						Satınal</a></td>

			</tr>
		</c:forEach>

	</table>
</body>
</html>