<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Hesap Sayfası</title>
</head>
<body>
	<h3>Hesap Sayfası</h3>
	<table cellpadding="2" cellspacing="2" border="0">
		<tr>
			<td>Kullanıcı Adı</td>
			<td>${hesap.kullaniciAdi }</td>
		</tr>
		<tr>
			<td>Adı Soyadı</td>
			<td>${hesap.adiVeSoyadi }</td>
		</tr>
		<tr>
			<td>Doğum Tarihi</td>
			<td><fmt:formatDate var="dogumTarihi"
					value="${hesap.dogumTarihi }" pattern="dd/MM/yyyy" />
				${dogumTarihi }</td>
		</tr>

	</table>

</body>
</html>