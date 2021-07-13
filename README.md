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
      　OKボタンを押すとNameCheckServletのdoGet()内　フォワードでprologue.jspを表示
      
### ゲーム開始からモンスター登場まで
     １、NEXTボタンを押すとPrologueServletのdoGet()内　フォワードでstory.jspを表示
     ２、PrologueServlet内でモンスターたちのインスタンスを保存。セッションスコープに渡す
     ３、BATTLEボタンを押すとBattleServletのdoGet()内　フォワードでbattle.jspを表示
     ４、クリックされたリンクに応じてactionの値を返す
     
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

## ◎各ファイル詳細
### src / beans
        〇Charactersクラス（抽象）
        ＜フィールド＞String name, int hp, int mp
        ＜メソッド＞各getter, setter

        〇Heroクラス（JavaBeans）
        ＜フィールド＞String name, int hp, int MAX_HP, int mp, int MAX_MP
        ＜コンストラクタ＞引数なし、引数あり(String name）
        ＜メソッド＞attack, aid, thunder

        〇Fighterクラス（JavaBeans）
        ＜フィールド＞String name, int hp, int MAX_HP, int mp, int MAX_MP, int mdt
        ＜コンストラクタ＞引数なし、引数あり（String name）
        ＜メソッド＞mdtのgetter, setter,attack, meditation

        〇Wizardクラス（JavaBeans）
        ＜フィールド＞String name, int hp, int MAX_HP, int mp, int MAX_MP
        ＜コンストラクタ＞引数なし、引数あり（String name）
        ＜メソッド＞attack, fire, bomb

        〇Monstersクラス（抽象）
        ＜フィールド＞char suffix, int hp
        ＜メソッド＞各getter, setter, attack

        〇Slimeクラス（JavaBeans）
        ＜フィールド＞int hp, int MAX_HP
        ＜コンストラクタ＞引数なし、引数あり（char suffix）
        ＜メソッド＞getName, attack, crouch

        〇Matangoクラス（JavaBeans）
        ＜フィールド＞int hp, int MAX_HP
        ＜コンストラクタ＞引数なし、引数あり（char suffix）
        ＜メソッド＞getName, attack, poison, rampage

        〇Dragonクラス（JavaBeans）
        ＜フィールド＞int hp, int MAX_HP
        ＜コンストラクタ＞引数なし、引数あり（char suffix）
        ＜メソッド＞getName, attack, bite

        
## ◎更新記録
    2021.07.07--リポジトリを作成。ゲームスタートからモンスターとのバトル画面まで、画面遷移自体は成功。
    2021.07.08--cssで軽くレイアウトを整える。
    2021.07.13--cssの再調整。しかしeclipseの内部ブラウザとchromeで、cssの適用にズレが生じている。
