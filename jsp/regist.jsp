<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="beans.Hero, beans.Fighter, beans.Wizard" %>

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
<p>${hero.name}</p>
<img src="/RPG/img/sample.png">
<p>HP:${hero.hp} / MP:${hero.mp}</p>
</div>

<div class="item">
<p>${fighter.name}</p>
<img src="/RPG/img/sample.png">
<p>HP:${fighter.hp} / MP：${fighter.mp}</p>
</div>

<div class="item">
<p>${wizard.name}</p>
<img src="/RPG/img/sample.png">
<p>HP：${wizard.hp} / MP：${wizard.mp}</p>
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