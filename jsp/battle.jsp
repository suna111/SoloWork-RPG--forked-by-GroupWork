<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.Hero, beans.Slime" %>
<%
Hero hero = new Hero();
Slime slimeA = new Slime('A');
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>かんたんなRPG</title>
<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/battle.css" type="text/css">
</head>
<body>
<!-- HEADERは別ファイルから読み込む -->
<jsp:include page="/WEB-INF/jsp/header.jsp" />

<div id="main">
<div id="wrapper">

<div class="item">
<img src="/RPG/img/sample.png">
<p>${slimeA.name} / ${slimeA.hp}</p>
</div>

<div class="item">
<img src="/RPG/img/sample.png">
<p>${slimeB.name} / ${slimeB.hp}</p>
</div>

<div class="item">
<img src="/RPG/img/sample.png">
<p>${slimeC.name} / ${slimeC.hp}</p>
</div>

</div>

<div id="flexWrapper">
<div class="command">
<p>コマンド</p>


<a href="/RPG/BattleGoServlet?action=1"><button>たたかう</button></a><br>
<a href="/RPG/BattleGoServlet?action=2"><button>回復</button></a><br>
<a href="/RPG/BattleGoServlet?action=3"><button>サンダー</button></a><br>
</div>

<p class="message">戦闘時のコメントが表示される場所</p>

</div>

<p class="chara">${hero.name} / HP:${hero.hp} / MP:${hero.mp}　★　${fighter.name} / HP:${fighter.hp} / MP:${fighter.mp}　★　${wizard.name} / HP:${wizard.hp} / MP:${wizard.mp}</p>
</div>

<!-- FOOTERは別ファイルから読み込む -->
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>