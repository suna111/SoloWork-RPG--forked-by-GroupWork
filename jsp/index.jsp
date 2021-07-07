<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>仮タイトル</title>
<link rel="stylesheet" href="/RPG/css/style.css">
</head>
<body>
<h2>タイトルを挿入</h2>

<div id="flex_wrapper"><!-- flex -->
	<img src="/RPG/img/sample.png">
	<img src="">
	<a href="/RPG/NameServlet"><button>START</button></a> <!-- 一旦サーブレットへ送る -->
</div>

<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>