package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Fighter;
import beans.Hero;
import beans.Matango;
import beans.Wizard;


@WebServlet("/Battle2GoServlet")
public class Battle2GoServlet extends HttpServlet {
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

		Matango matangoA = (Matango) session.getAttribute("matangoA");
		Matango matangoB = (Matango) session.getAttribute("matangoB");


		//選択内容に合わせて行動を分岐させる
		switch(action) {
		case 1:
			switch(target) {
				case 1:
					fighter.attack(matangoA);
					break;
				case 2:
					fighter.attack(matangoB);
					break;
			}
			matangoA.attack(fighter);
			break;
		case 2:
			switch(target) {
				case 1:
					fighter.meditation(matangoA);
					break;
				case 2:
					fighter.meditation(matangoB);
					break;
			}
			matangoB.poison(fighter);
			break;
		case 3:
			switch(target) {
				case 1:
					fighter.power(matangoA);
					break;
				case 2:
					fighter.power(matangoB);
					break;
			}
			matangoA.rampage(hero, fighter, wizard);
			break;
		}

		//HPが0以下にならないようにする
		if(matangoA.getHp() < 0 ) {
			matangoA.setHp(0);
		}

		if(matangoB.getHp() < 0 ) {
			matangoB.setHp(0);
		}


		//すべてのモンスターのHPが0になったらフォワード
		if((matangoA.getHp() == 0) && (matangoB.getHp() == 0)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/battle3.jsp");
			dispatcher.forward(request, response);
		}

		//フォワードして表示
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/battle2.jsp");
		dispatcher.forward(request, response);
	}

}
