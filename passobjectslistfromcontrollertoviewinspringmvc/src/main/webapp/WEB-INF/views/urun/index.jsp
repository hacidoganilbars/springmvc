<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Ürün Bilgileri</title>
<link href="${pageContext.request.contextPath }/resources/css/style.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<h3>Ürün Bilgileri</h3>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>ID</th>
			<th>İsim</th>
			<th>Fotograf</th>
			<th>Fiyat</th>
			<th>Miktar</th>
			<th>Toplam</th>
		</tr>
		<c:forEach var="urun" items="${urunler }">
			<tr>
				<td>${urun.id }</td>
				<td>${urun.isim }</td>
				<td><img
					src="${pageContext.request.contextPath }/resources/images/${urun.fotograf}" /></td>
				<td>${urun.fiyat }</td>
				<td>${urun.miktar }</td>
				<td>${urun.fiyat * urun.miktar }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>