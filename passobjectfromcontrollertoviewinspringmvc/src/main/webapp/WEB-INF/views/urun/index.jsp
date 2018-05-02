<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Urun Bilgileri</title>
<link href="${pageContext.request.contextPath }/resources/css/style.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<h3>Ürün Bilgileri</h3>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<td>İd</td>
			<td>${urun.id }</td>
		</tr>
		<tr>
			<td>İsim</td>
			<td>${urun.isim }</td>
		</tr>
		<tr>
			<td>Fotograf</td>
			<td><img
				src="${pageContext.request.contextPath }/resources/images/${urun.fotograf}"></td>
		</tr>
		<tr>
			<td>Fiyat</td>
			<td>${urun.fiyat }</td>
		</tr>
		<tr>
			<td>Miktar</td>
			<td>${urun.miktar }</td>
		</tr>
		<tr>
			<td>Toplam</td>
			<td>${urun.fiyat*urun.miktar }</td>
		</tr>

	</table>
</body>
</html>