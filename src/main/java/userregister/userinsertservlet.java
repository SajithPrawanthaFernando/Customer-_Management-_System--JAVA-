package userregister;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class userinsertservlet
 */
@WebServlet("/userinsertservlet")
public class userinsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue = userdb.insertcustomer(name, email, phone, username, password);
		
		if(isTrue == true) {

			RequestDispatcher dis = request.getRequestDispatcher("registersuccess.jsp");
			dis.forward(request, response);
			
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("registerunsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
