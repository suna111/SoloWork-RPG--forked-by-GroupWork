<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="beans.Hero, beans.Fighter, beans.Wizard" %>
<%
//Hero hero = (Hero) session.getAttribute("hero");
//Fighter fighter = (Fighter) session.getAttribute("fighter");
//Wizard wizard = (Wizard) session.getAttribute("wizard");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>かんたんなRPG</title>
<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/name.css" type="text/css">

</head>
<body>
<!-- HEADERは別ファイルから読み込む -->
<jsp:include page="/WEB-INF/jsp/header.jsp" />

<div id="main">
<p class="message">これでいいですか？</p>

<div id="wrapper">

<div class="item">
<p><c:out value="${hero.name}" /></p>
<img src="/RPG/img/sample.png">
<p><c:out value="${hero.hp} / ${hero.mp}" /></p>
</div>

<div class="item">
<p><c:out value="${fighter.name}" /></p>
<img src="/RPG/img/sample.png">
<p><c:out value="${fighter.hp} / ${fighter.mp}" /></p>
</div>

<div class="item">
<p><c:out value="${wizard.name}" /></p>
<img src="/RPG/img/sample.png">
<p><c:out value="${wizard.hp} / ${wizard.mp}" /></p>
</div>
</div>

<div id="flexWrapper">
<a href="/RPG/NameServlet"><button class="buttonPosi">BACK</button></a> <!-- 名前入力画面へと遷移 -->
<a href="/RPG/NameCheckServlet"><button>OK</button></a>
</div>

</div>
<!-- FOOTERは別ファイルから読み込む -->
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>