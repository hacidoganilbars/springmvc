<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Hesap Kayıt</title>
</head>
<body>
	<h3>Hesap Kayıt</h3>
	<form:form method="post" modelAttribute="hesap"
		action="${pageContext.request.contextPath }/hesap/kaydet">
		<table cellpadding="2" cellspacing="2" border="0">
			<tr>
				<td>Kullanıcı Adı</td>
				<td><form:input path="kullaniciAdi" /></td>
			</tr>
			<tr>
				<td>Adı Soyadı</td>
				<td><form:input path="adiSoyadi" /></td>
			</tr>
			<tr>
				<td>Rol</td>
				<td><form:select path="rol" items="${roller }" itemValue="id"
						itemLabel="isim"></form:select></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Kaydet"></td>
			</tr>
		</table>
	</form:form>

</body>
</html>