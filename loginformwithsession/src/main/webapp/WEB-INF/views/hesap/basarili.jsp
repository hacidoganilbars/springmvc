<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Başarılı Sayfası</title>
</head>
<body>
	<h3>Başarılı Sayfası</h3>
	HOŞGELDİNİZ ${sessionScope.kullaniciadi }
	<br>
	<a href="${pageContext.request.contextPath}/hesap/cikis">Logout</a>

</body>
</html>