<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Index View</title>
</head>
<body>

<h3>URL Parameters</h3>
<a href="${pageContext.request.contextPath }/demo/hi?fullName=Doğan İlbars">One Parameter</a>
<br>
<a href="${pageContext.request.contextPath }/demo/sum?a=2&b=3">Multiple Paramaters</a>

</body>
</html>