package calculator;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormulaireServlet
 */
@WebServlet("/FormulaireServlet")
public class FormulaireServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormulaireServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String opt1 =request.getParameter("opt1");
		String opt2 =request.getParameter("opt2");
		String rad =request.getParameter("r1");
	
		
		if(opt1==null || opt2==null || rad==null || !opt1.matches("[0-9]*") || !opt2.matches("[0-9]*") || opt1=="" || opt2=="" ){
			RequestDispatcher disp = request.getRequestDispatcher("erreur.jsp") ;
			disp.forward(request, response) ;
		}
			else{
				RequestDispatcher disp = request.getRequestDispatcher("reponce.jsp") ;
				disp.forward(request, response) ;
			}
		}
	}


