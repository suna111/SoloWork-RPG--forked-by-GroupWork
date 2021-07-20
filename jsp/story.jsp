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
　「BATTLE」をクリックすると戦闘が始まります。<br>
　全てのモンスターのHPが0になると、自動的に次の戦闘へ進みます。<br>
<br>
　◎１戦目：スライム３体　「たたかう」を使えば一撃で倒せます<br>
　◎２戦目：マタンゴ２体　「飛び蹴り」を使えば一撃で倒せます<br>
　◎３戦目：ドラゴン１体　「自暴自棄」を使えば一撃で倒せます<br>
　開発時のチェックが楽になるように、冒険者たちの攻撃力をかなり高めに設定しています。<br>
</p>
<div id="wrapper">
<img src="/RPG/img/sample.png">

<p>
モンスターが現れた！
</p>
</div>

<a href="/RPG/BattleGoServlet"><button class="buttonPosi">BATTLE</button></a>

</div>

<!-- FOOTERは別ファイルから読み込む -->
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>