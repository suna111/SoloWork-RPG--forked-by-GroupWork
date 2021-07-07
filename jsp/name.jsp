<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>なまえ</h3>
<form action="/RPG/NameServlet" method="post">
<div class="container">
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
</div>

	<input type="submit" value="決定">
</form>
</body>
</html>