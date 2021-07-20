package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Dragon;
import beans.Fighter;
import beans.Hero;
import beans.Wizard;


@WebServlet("/Battle3GoServlet")
public class Battle3GoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/battle.jsp");
//		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//ラジオボタンで攻撃対象と攻撃内容を取得する
		int target = Integer.parseInt(request.getParameter("target"));
		int action = Integer.parseInt(request.getParameter("action"));

		//セッションスコープに保存した内容を取得する
		HttpSession session = request.getSession();
		Hero hero = (Hero) session.getAttribute("hero");
		Fighter fighter = (Fighter) session.getAttribute("fighter");
		Wizard wizard = (Wizard) session.getAttribute("wizard");

		Dragon dragon = (Dragon) session.getAttribute("dragon");


		//選択内容に合わせて行動を分岐させる
		switch(action) {
		case 1:
			wizard.attack(dragon);
			dragon.attack(wizard);
			break;
		case 2:
			wizard.fire(dragon);
			dragon.bite(wizard);
			break;
		case 3:
			wizard.bomb(dragon);
			dragon.attack(wizard);
			break;
		}

		//HPが0以下にならないようにする
		if(dragon.getHp() < 0 ) {
			dragon.setHp(0);
		}


		//すべてのモンスターのHPが0になったらフォワード
		if(dragon.getHp() == 0) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/battleEnd.jsp");
			dispatcher.forward(request, response);
		}

		//フォワードして表示
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/battle3.jsp");
		dispatcher.forward(request, response);
	}

}
