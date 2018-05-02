<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Yeni Ürün Ekle</title>
</head>
<body>
	<h3>Yeni Ürün Ekle</h3>
	<form:form method="post" modelAttribute="urun"
		enctype="multipart/form-data" action="urun/kaydet">

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

			<tr>
				<td>Fotograf</td>
				<td><input type="file" name="file" /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Kaydet" /></td>
			</tr>

		</table>

	</form:form>
</body>
</html>