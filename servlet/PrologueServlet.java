package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/PrologueServlet")
public class PrologueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


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
