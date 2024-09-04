package com.abc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.abc.model.User;
import com.abc.service.UserService;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UserService userService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
        userService = UserService.getInstance();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Authenticate the user
        User user = userService.authenticateUser(username, password);

        if (user != null) {
            // Successful login
            HttpSession session = request.getSession();
            session.setAttribute("loggedInUser", user);

            // Role-based access control (redirect based on role)
            if ("Admin".equals(user.getRole())) {
                response.sendRedirect("adminDashboard.jsp");
            } else if ("Staff".equals(user.getRole())) {
                response.sendRedirect("staffDashboard.jsp");
            } else if ("Customer".equals(user.getRole())) {
                response.sendRedirect("index.jsp");
            } else {
                // Handle unknown roles
                session.invalidate();
                request.setAttribute("errorMessage", "Invalid role.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            // Failed login
            request.setAttribute("errorMessage", "Invalid username or password.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
	}

}
