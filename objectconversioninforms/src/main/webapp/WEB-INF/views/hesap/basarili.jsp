<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Hesap Bilgileri</title>
</head>
<body>
	<h3>Hesap Bilgileri</h3>

	<table cellpadding="2" cellspacing="2" border="1">

		<tr>
			<td>Kullanıcı Adı</td>
			<td>${hesap.kullaniciAdi }</td>
		</tr>
		<tr>
			<td>Adı Soyadı</td>
			<td>${hesap.adiSoyadi }</td>
		</tr>
		<tr>
			<td>Rol İd</td>
			<td>${hesap.rol.id }</td>
		</tr>
		<tr>
			<td>Rol Adı</td>
			<td>${hesap.rol.isim }</td>
		</tr>

	</table>
</body>
</html>