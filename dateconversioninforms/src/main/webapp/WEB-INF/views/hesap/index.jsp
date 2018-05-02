<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Hesap Ayarları</title>
</head>
<body>
	<h3>Hesap Ayarları</h3>
	<s:form method="post" modelAttribute="hesap"
		action="${pageContext.request.contextPath }/hesap/kaydet">
		<table cellpadding="2" cellspacing="2" border="0">
			<tr>
				<td>Kullanıcı Adı</td>
				<td><s:input path="kullaniciAdi" /></td>
			</tr>
			<tr>
				<td>Adı Soyadı</td>
				<td><s:input path="adiVeSoyadi" /></td>
			</tr>
			<tr>
				<td>Doğum Tarihi</td>
				<td><s:input path="dogumTarihi" /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Kaydet"></td>
			</tr>
		</table>
	</s:form>

</body>
</html>