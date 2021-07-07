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
<title>Insert title here</title>
</head>
<body>
<img src="/RPG/img/sample.png">
${slimeA.name} / ${slimeA.hp}

<img src="/RPG/img/sample.png">
${slimeB.name} / ${slimeB.hp}

<img src="/RPG/img/sample.png">
${slimeC.name} / ${slimeC.hp}

<p>コマンド</p>

<button onclick=<% hero.attack(slimeA);  %> >スライムをたたく</button>
<a href="/RPG/BattleGoServlet?action=1">たたかう</a><br>
<a href="/RPG/BattleGoServlet?action=2">回復</a><br>
<a href="/RPG/BattleGoServlet?action=3">サンダー</a><br>

<p>戦闘時のコメントが表示される場所</p>

<p>${hero.name}HP:${hero.hp} / MP:${hero.mp}　〇　${fighter.name}HP:${fighter.hp} / MP:${fighter.mp}　〇　${wizard.name}HP:${wizard.hp} / MP:${wizard.mp}</p>
</body>
</html>