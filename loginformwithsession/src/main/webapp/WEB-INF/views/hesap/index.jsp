<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Giriş Sayfası</title>
</head>
<body>
	<h3>Giriş Sayfası</h3>
	${hata }
	<form method="post"
		action="${pageContext.request.contextPath }/hesap/giris">
		<table border="0" cellpadding="2" cellspacing="2">
			<tr>
				<td>Kullanıcı Adı</td>
				<td><input type="text" name="kullaniciadi" /></td>
			</tr>
			<tr>
				<td>Şifre</td>
				<td><input type="text" name="sifre" /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Giriş" /></td>
			</tr>
		</table>

	</form>
</body>
</html>