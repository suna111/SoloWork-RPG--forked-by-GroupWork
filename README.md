# SoloWork-RPG-ForkedByGroupWork

## ◎概要
    テーマ：「GroupWork-RPG-」で作成したコードを元に、WEBアプリケーションを作成する
    使用言語：Java Servlet JSPなど
    使用ツール：Eclipse GitHub

## ◎システムの流れ
### トップページから、各キャラクターの名前を入力するまで
    １、WelcomeServletのdoGet()内 フォワードでindex.jspを表示
    ２、index.jspのスタートボタンを押す
    ３、NameServletのdoGet()内　フォワードでname.jspを表示
    ４、各キャラクターの名前を入力したのち、submitボタンを押すとPOSTメソッドでNameServletへ
    ５、入力値input name="name"を取得し、各インスタンスに保存。セッションスコープに渡してregist.jspで表示
    ６、BACKボタンを押すとNameServletのdoGet()へ渡り、name.jspが表示される
      　OKボタンを押すとNameCheckServletのdoGet()内　フォワードでnameCheck.jspを表示
      
### ゲーム開始からモンスター登場まで
     のちほど更新予定
### モンスターとの戦闘中（３体倒すまで）
     のちほど更新予定
### ゲームクリア、再スタートの処理
     のちほど更新予定
     
## ◎システム設計図
    のちほど更新予定
 
## ◎ファイルディレクトリ図

    RPG //プロジェクト名
     ┗src
        ┗□filter
        ┗□beans
        ┗□servlet

      ┗WebContent
        ┗□css
        ┗□WEB-INF
          ┗□jsp
        ┗indes.jsp //トップページ
        
## ◎更新記録
    2021.07.07--リポジトリを作成。
 
