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
import beans.Wizard;


@WebServlet("/NameServlet")
public class NameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//名前入力画面にフォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/name.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//入力値で各キャラクターのnameを取得
		String heroName = request.getParameter("heroName");
		String fighterName = request.getParameter("fighterName");
		String wizardName = request.getParameter("wizardName");

		//Hero誕生
		Hero hero = new Hero();
		hero.setName(heroName);

		//Fighter誕生
		Fighter fighter = new Fighter();
		fighter.setName(fighterName);

		//Wizard誕生
		Wizard wizard = new Wizard();
		wizard.setName(wizardName);

		//セッションスコープに設定
		HttpSession session = request.getSession();
		session.setAttribute("hero", hero);
		session.setAttribute("fighter", fighter);
		session.setAttribute("wizard", wizard);

		//フォワードして画面遷移
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/regist.jsp");
		dispatcher.forward(request, response);
	}

}
