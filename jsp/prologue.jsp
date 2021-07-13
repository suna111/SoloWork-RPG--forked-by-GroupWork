<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>かんたんなRPG</title>

<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/story.css" type="text/css">
</head>
<body>
<!-- HEADERは別ファイルから読み込む -->
<jsp:include page="/WEB-INF/jsp/header.jsp" />


<div id="main">
<p class="story">
　ダミーテキストダミーテキストダミーテキストダミーテキストダミーテキストダミーテキスト<br>
ダミーテキストダミーテキストダミーテキストダミーテキストダミーテキストダミーテキスト<br>
ダミーテキストダミーテキストダミーテキストダミーテキストダミーテキストダミーテキスト<br>
ダミーテキストダミーテキストダミーテキストダミーテキストダミーテキストダミーテキスト<br>
ダミーテキストダミーテキストダミーテキストダミーテキストダミーテキストダミーテキスト<br>
ダミーテキストダミーテキストダミーテキストダミーテキストダミーテキストダミーテキスト<br>
ダミーテキストダミーテキストダミーテキストダミーテキストダミーテキストダミーテキスト<br>

</p>

<div id="wrapper">
<img src="/RPG/img/sample.png">

<p>
操作方法はクリックだけ！<br>
「たたかう」などのコマンドをクリックするとモンスターを攻撃します<br>
すべてのモンスターのHPが０になったら勝利<br>
逆に勇者たちのHPが０になると・・・<br>
</p>
</div>
<a href="/RPG/PrologueServlet"><button class="buttonPosi">NEXT</button></a>
</div>

<!-- FOOTERは別ファイルから読み込む -->
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>