<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Home Page</title>
</head>
<body>
	<h3>Home Page</h3>
	<form:form method="post" modelAttribute="urun"
		action="${pageContext.request.contextPath}/demo/save">
		<fieldset>
			<legend>Tek Değerler</legend>
			<table>
				<tr>
					<td>Yaş</td>
					<td><input type="text" name="yas" /></td>
				</tr>
				<tr>
					<td>Kullanıcı Adı</td>
					<td><input type="text" name="kullaniciadi" /></td>
				</tr>
			</table>
		</fieldset>
		<fieldset>
			<legend>Urun Bilgileri</legend>
			<table>
				<tr>
					<td>Id</td>
					<td><form:input path="id" /></td>
				</tr>
				<tr>
					<td>İsim</td>
					<td><form:input path="isim" /></td>
				</tr>
				<tr>
					<td>Fiyat</td>
					<td><form:input path="fiyat" /></td>
				</tr>
			</table>
		</fieldset>
		<input type="submit" value="Save" />


	</form:form>

</body>
</html>