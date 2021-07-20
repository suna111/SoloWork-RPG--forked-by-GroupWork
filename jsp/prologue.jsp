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
　こちらのWEBアプリケーションは、職業訓練のクラスメイトと一緒に作成したJavaのクラスをもとに作成しています。
⇒ <a href="https://github.com/suna111/GroupWork-RPG-" target="_blank">RPG-GroupWork-</a><br>
　一部コードに関しては内容を書き換えた部分もございます。
その他のコードや詳細については　<a href="https://github.com/suna111/SoloWork-RPG-ForkedByGroupWork" target="_blank">SoloWork-RPG-ForkedByGroupWork</a>に全て掲載しています。<br>
　攻撃対象（スライムAなど）、攻撃方法（たたかう、など）の２つを選択した状態で「OK」ボタンを押すと行動が実行されます。どちらか片方しか選択していない場合、エラー500が排出されます。<br>


</p>

<div id="wrapper">
<img src="/RPG/img/sample.png">

<p>
操作方法はクリックだけ！<br>
「たたかう」などのコマンドと、攻撃したい相手を選んで<br>
「OK」ボタンを押すと行動します<br>
すべてのモンスターのHPが０になったら勝利！<br>
</p>
</div>
<a href="/RPG/PrologueServlet"><button class="buttonPosi">NEXT</button></a>
</div>

<!-- FOOTERは別ファイルから読み込む -->
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>