<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Home Page</title>
</head>
<body>
	<h3>İlk Değerler</h3>
	<table border="1">
		<tr>
			<td>Yaş</td>
			<td>${yas }</td>
		</tr>
		<tr>
			<td>Kullanıcı Adı</td>
			<td>${kullaniciadi }</td>
		</tr>
	</table>
	<h3>Ürün Bilgi</h3>
	<table border="1">
		<tr>
			<td>Id</td>
			<td>${urun.id }</td>
		</tr>
		<tr>
			<td>İsim</td>
			<td>${urun.isim }</td>
		</tr>
		<tr>
			<td>Fiyat</td>
			<td>${urun.fiyat }</td>
		</tr>
	</table>
</body>
</html>