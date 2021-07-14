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
import beans.Matango;
import beans.Slime;




@WebServlet("/PrologueServlet")
public class PrologueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//モンスターたちを生み出す
		Slime slimeA = new Slime('A');
		Slime slimeB = new Slime('B');
		Slime slimeC = new Slime('C');

		Matango matangoA = new Matango('A');
		Matango matangoB = new Matango('B');

		Dragon dragon = new Dragon('A');

		//セッションスコープに保存
		HttpSession session = request.getSession();
		session.setAttribute("slimeA", slimeA);
		session.setAttribute("slimeB", slimeB);
		session.setAttribute("slimeC", slimeC);

		session.setAttribute("matangoA", matangoA);
		session.setAttribute("matangoB", matangoB);

		session.setAttribute("dragon", dragon);

		//モンスター出現メッセージの分岐
//		String battleMsg = "モンスター出現メッセージが表示される場所";
//		int count = 0;
//
//		switch(count) {
//			case 1:
//				battleMsg += "${slimeA.name}が現れた！<br>";
//				battleMsg += "${slimeB.name}も現れた！<br>";
//				battleMsg += "なんと、${slimeC.name}まで現れた！<br>";
//				break;
//			case 2:
//				battleMsg += "${matangoA.name}が現れた！<br>";
//				battleMsg += "その後ろから${matangoB.name}が歩いてきた！<br>";
//				break;
//			case 3:
//				battleMsg += "${dragon.name}が現れた！<br>";
//				break;
//			default:
//				response.sendRedirect("/index.jsp");
//
//		}
//
//		session.setAttribute("battleMsg", battleMsg);


		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/story.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
