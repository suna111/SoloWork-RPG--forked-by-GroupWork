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
import beans.Slime;
import beans.Wizard;


@WebServlet("/BattleGoServlet")
public class BattleGoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/battle.jsp");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



		int action = Integer.parseInt(request.getParameter("action"));

		HttpSession session = request.getSession();
		Hero hero = (Hero) session.getAttribute("hero");
		Fighter fighter = (Fighter) session.getAttribute("fighter");
		Wizard wizard = (Wizard) session.getAttribute("wizard");

		Slime slimeA = (Slime) session.getAttribute("slimeA");
		Slime slimeB = (Slime) session.getAttribute("slimeB");
		Slime slimeC = (Slime) session.getAttribute("slimeC");



		switch(action) {
		case 1:
			hero.attack(slimeA);
			break;
		case 2:
			hero.aid(hero);
			break;
		case 3:
			hero.thunder(slimeA);
			break;
		}



		session.setAttribute("hero", hero);
		session.setAttribute("slimeA", slimeA);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/battle.jsp");
		dispatcher.forward(request, response);
	}

}
