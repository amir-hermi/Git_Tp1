package com.servelts;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CoffeServlet
 */
@WebServlet("/CoffeServlet")
public class CoffeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CoffeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String typeremarque = request.getParameter("typeremarque");
		String texteremarque = request.getParameter("texteremarque");
		PrintWriter out = response.getWriter();
		out.println("<html><head>");
		out.println("<title>Starbucks Coffee</title></head>");
		out.println("<body> <img src='Starbucks.jpg' border='0' height='200' width='200'>");
		out.println("<p>Merci de nous avoir fait parvenir la remarque suivante concernant");
		out.println("<b>"+typeremarque+"</b>");
		out.println("<p>"+texteremarque);
		out.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
