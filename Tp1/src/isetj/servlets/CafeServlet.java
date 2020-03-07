package isetj.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CafeServlet
 */
@WebServlet("/CafeServlet")
public class CafeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CafeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String r =request.getParameter("r");
		String t =request.getParameter("t");
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		out.println("<html> <head></title></title></head>");

		out.println("'<img src ='download.jpg' width='250' height='250'>");
		out.println("<br> <p> Merci de nous avoir fait parvenir le remarque suivante concernat</p>");
		out.println("<b>"+r+"</b>");
		out.println("<p>"+t+"</p>");



	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
