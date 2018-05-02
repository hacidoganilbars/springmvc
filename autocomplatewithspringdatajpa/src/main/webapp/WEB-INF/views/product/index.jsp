<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seaarch Auto Complate with MVC</title>
<script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-ui.js"></script>
<link
	href="${pageContext.request.contextPath }/resources/css/jquery-ui.css" />
<script type="text/javascript">
	$(document).ready(function() {
		$('#productName').autocomplete({
			source : '${pageContext.request.contextPath}/product/search'
		});
	});
</script>
</head>
<body>
	Search Product
	<input type="text" id="productName" />

</body>
</html>