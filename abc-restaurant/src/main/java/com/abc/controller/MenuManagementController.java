package com.abc.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.abc.model.MenuItem;
import com.abc.service.MenuItemService;

/**
 * Servlet implementation class MenuManagementController
 */
@MultipartConfig
public class MenuManagementController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MenuItemService menuItemService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MenuManagementController() {
		super();
		// TODO Auto-generated constructor stub
		menuItemService = MenuItemService.getInstance();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String action = request.getParameter("action");
		if (action!= null && action.equals("edit")) {
			int id = Integer.parseInt(request.getParameter("id"));
			MenuItem existingMenuItem = menuItemService.getMenuItemById(id);
			request.setAttribute("menuItem", existingMenuItem);
		}
		if (action!= null && action.equals("delete")) {
			deleteMenuItem(request, response);
		}
		
		
		List<MenuItem> menuItemList = new ArrayList<>();
		try {
			menuItemList = menuItemService.getAllMenuItems();
			request.setAttribute("menuItems", menuItemList);
		} catch (SQLException e) {
			request.setAttribute("errorMessage", e.getMessage());
			request.getRequestDispatcher("WEB-INF/view/error.jsp").forward(request, response);
			return;
		}		

		request.getRequestDispatcher("WEB-INF/view/MenuManagement.jsp").forward(request, response);
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String action = request.getParameter("action");
		if (action.equals("add")) {
			addMenuItem(request, response);
		} else if (action.equals("update")) {
			updateMenuItem(request, response);
		}

		doGet(request, response);
	}

	private void addMenuItem(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String title = request.getParameter("title");
		double price = Double.parseDouble(request.getParameter("price"));
		String description = request.getParameter("description");
		String category = request.getParameter("category");

		Part imagePart = request.getPart("image");
		String uploadDir = getServletContext().getRealPath("") + File.separator + "uploads";

		MenuItem menuItem = new MenuItem();
		menuItem.setTitle(title);
		menuItem.setPrice(price);
		menuItem.setDescription(description);
		menuItem.setCategory(category);

		menuItemService.addMenuItem(menuItem, convertPartToFile(imagePart), uploadDir);

		// response.sendRedirect("menu?action=list");
	}

	private File convertPartToFile(Part part) throws IOException {
		File file = File.createTempFile("upload_", "_" + part.getSubmittedFileName());
		part.write(file.getAbsolutePath());
		return file;
	}
	
	private void updateMenuItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String category = request.getParameter("category");

        Part imagePart = request.getPart("image");
        String uploadDir = getServletContext().getRealPath("") + File.separator + "uploads";
        
        MenuItem menuItem = new MenuItem(id, title, price, description, null, category);

        if (imagePart != null && imagePart.getSize() > 0) {
            menuItemService.updateMenuItem(menuItem, convertPartToFile(imagePart), uploadDir);
        } else {
            menuItemService.updateMenuItem(menuItem, null, uploadDir);
        }

        //response.sendRedirect("menu?action=list");
    }
	
	private void deleteMenuItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        menuItemService.deleteMenuItem(id);
        //response.sendRedirect("menu?action=list");
    }
}
