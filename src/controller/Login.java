package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CustomerDAO;
import model.Customer;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}
	

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");

			String action = request.getParameter("action");
			System.out.println(action);

			HttpSession session = request.getSession();
			if (action == null) {

			} else if (action.equals("signIn")) {
			
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				if (CustomerDAO.check(username, password)) {
					Customer customer = CustomerDAO.listCustomer.get(CustomerDAO.findIndexAccount(username));
					session.setAttribute("signIn", customer.getAccount());
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
					rd.forward(request, response);
				}

			
				else {
					request.setAttribute("login_err", "Acount don't exist");
					System.out.println(request.getAttribute("login_err"));
					// response.sendRedirect("login.jsp");
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
					rd.forward(request, response);

				}
			}
			
			else if (action.equals("fb")) {
				session.setAttribute("signIn", request.getParameter("name"));

				response.sendRedirect("index.jsp");
			} else if (action.equals("google")) {
				session.setAttribute("signIn", request.getParameter("name"));
			
				response.sendRedirect("index.jsp");
			} else {
				response.sendRedirect("login.jsp");
			}
		}
	}
}
