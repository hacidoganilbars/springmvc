<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Başarılı View</title>
</head>
<body>

	<h3>Kayıt Bilgileri</h3>
	<table cellpadding="2" cellspacing="2" border="1">
		<tr>
			<td>İD</td>
			<td>${hesap.id }</td>
		</tr>
		<tr>
			<td>Kullanıcı Adı</td>
			<td>${hesap.kullaniciAdi }</td>
		</tr>

		<tr>
			<td>Şifre</td>
			<td>${hesap.sifre }</td>
		</tr>

		<tr>
			<td>Açıklama</td>
			<td>${hesap.aciklama }</td>
		</tr>

		<tr>
			<td>Cinsiyet</td>
			<td>${hesap.cinsiyet }</td>
		</tr>
		<tr>
			<td>Durum</td>
			<td>${hesap.durum }</td>
		</tr>

		<tr>
			<td>Diller</td>
			<td><c:forEach var="dil" items="${hesap.diller }">
			${dil }
			<br>
				</c:forEach></td>
		</tr>
		<tr>
			<td>Rol</td>
			<td>${hesap.rol }</td>
		</tr>
	</table>

</body>
</html>