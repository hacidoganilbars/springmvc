<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Sonuç Sayfası</title>
</head>
<body>
	<h3>İlk Değerler</h3>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<td>Yaş</td>
			<td>${sessionScope.yas }</td>
		</tr>
		<tr>
			<td>Kullanıcı Adı</td>
			<td>${sessionScope.kullaniciadi }</td>
		</tr>
	</table>
	<h3>Urun Bilgi</h3>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<td>İd</td>
			<td>${sessionScope.urun.id }</td>
		</tr>
		<tr>
			<td>İsim</td>
			<td>${sessionScope.urun.isim }</td>
		</tr>
		<tr>
			<td>Fiyat</td>
			<td>${sessionScope.urun.fiyat }</td>
		</tr>
	</table>

	<h3>Urunler Listesi</h3>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>İd</th>
			<th>İsim</th>
			<th>Fiyat</th>
		</tr>
		<c:forEach var="urun" items="${sessionScope.urunler }">
			<tr>
				<td>${urun.id }</td>
				<td>${urun.isim }</td>
				<td>${urun.fiyat }</td>
			</tr>

		</c:forEach>
	</table>
</body>
</html>