<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hesap Kayıt</title>
</head>
<body>

	<h3>Hesap Kayıt</h3>
	<form:form method="POST" modelAttribute="hesap"
		action="${pageContext.request.contextPath}/hesap/kayit">
		<table>
			<tr>
				<td>Kullanınıcı Adı</td>
				<td><form:input path="kullaniciAdi" /></td>
			</tr>
			<tr>
				<td>Şifre</td>
				<td><form:password path="sifre" /></td>
			</tr>
			<tr>
				<td valign="top">Açıklama</td>
				<td><form:textarea path="aciklama" cols="20" rows="5" /></td>
			</tr>

			<tr>
				<td>Cinsiyet</td>
				<td><form:radiobutton path="cinsiyet" value="Erkek" />Erkek <br>
					<form:radiobutton path="cinsiyet" value="Kadın" />Kadın</td>
			</tr>
			<tr>
				<td>Durum</td>
				<td><form:checkbox path="durum" /> <br>
			</tr>
			<tr>
				<td>Diller</td>
				<td><form:checkboxes path="diller" items="${diller}"
						itemLabel="isim" itemValue="id" /></td>
			</tr>
			<tr>
				<td>Rol</td>
				<td><form:select path="rol" items="${roller}" itemLabel="isim"
						itemValue="id"></form:select></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Kaydet" /> <form:hidden
						path="id" /></td>
			</tr>
		</table>

	</form:form>

</body>
</html>