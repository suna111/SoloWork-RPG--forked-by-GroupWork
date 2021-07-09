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
</head>
<body>
<!-- HEADERは別ファイルから読み込む -->
<jsp:include page="/WEB-INF/jsp/header.jsp" />

<div id="main">
<img src="/RPG/img/sample.png">
${slimeA.name} / ${slimeA.hp}

<img src="/RPG/img/sample.png">
${slimeB.name} / ${slimeB.hp}

<img src="/RPG/img/sample.png">
${slimeC.name} / ${slimeC.hp}

<p>コマンド</p>


<a href="/RPG/BattleGoServlet?action=1"><button>たたかう</button></a><br>
<a href="/RPG/BattleGoServlet?action=2"><button>回復</button></a><br>
<a href="/RPG/BattleGoServlet?action=3"><button>サンダー</button></a><br>

<p>戦闘時のコメントが表示される場所</p>

<p>${hero.name}HP:${hero.hp} / MP:${hero.mp}　〇　${fighter.name}HP:${fighter.hp} / MP:${fighter.mp}　〇　${wizard.name}HP:${wizard.hp} / MP:${wizard.mp}</p>
</div>

<!-- FOOTERは別ファイルから読み込む -->
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>