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
<title>Insert title here</title>
</head>
<body>
<p><c:out value="${hero.name}" /></p>
<img src="/RPG/img/sample.png">
<p><c:out value="${hero.hp} / ${hero.mp}" /></p>

<p><c:out value="${fighter.name}" /></p>
<img src="/RPG/img/sample.png">
<p><c:out value="${fighter.hp} / ${fighter.mp}" /></p>

<p><c:out value="${wizard.name}" /></p>
<img src="/RPG/img/sample.png">
<p><c:out value="${wizard.hp} / ${wizard.mp}" /></p>

<a href="/RPG/NameServlet"><button>BACK</button></a> <!-- 名前入力画面へと遷移 -->
<a href="/RPG/NameCheckServlet"><button>OK</button></a>
</body>
</html>