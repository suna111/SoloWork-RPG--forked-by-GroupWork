<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>かんたんなRPG</title>
<jsp:include page="/WEB-INF/jsp/css.jsp" />
</head>
<body>
<!-- HEADERは別ファイルから読み込む -->
<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" type="text/css">

<div id="main">
<p>おはなし</p>

<img src="/RPG/img/sample.png">

<p>説明</p>

<a href="/RPG/PrologueServlet"><button>NEXT</button></a>
</div>

<!-- FOOTERは別ファイルから読み込む -->
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>