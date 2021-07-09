<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>かんたんなRPG</title>
<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" type="text/css">

</head>
<body>
<!-- HEADERは別ファイルから読み込む -->
<jsp:include page="/WEB-INF/jsp/header.jsp" />

<div id="main">
<div id="wrapper">
<form action="/RPG/NameServlet" method="post">

	<div class="item">
		<p>勇者</p>
		<input type="text" name="heroName">
		<img src="/RPG/img/sample.png">
	</div>

	<div class="item">
		<p>格闘家</p>
		<input type="text" name="fighterName">
		<img src="/RPG/img/sample.png">
	</div>

	<div class="item">
		<p>魔法使い</p>
		<input type="text" name="wizardName">
		<img src="/RPG/img/sample.png">
	</div>


	<button><input type="submit" value="決定"></button>
</form>
</div>
</div>
<!-- FOOTERは別ファイルから読み込む -->
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>

</html>