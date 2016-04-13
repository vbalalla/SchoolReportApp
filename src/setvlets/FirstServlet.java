package setvlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classes.ReadCVS;
import dbAccess.InputData;

/**
 * Servlet implementation class FirstServlet
 */
@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getParameter("url");
		String year = request.getParameter("year");
		String sem = request.getParameter("sem");
		
		ReadCVS obj = new ReadCVS();
		ArrayList<String> alldata = obj.run(url);
		System.out.println(alldata.get(0));
		InputData in = new InputData();
		
		String[] data = alldata.get(0).split(",");
		
		try {
			String dbname = in.create_db(year, sem, data);
			in.addCVS(alldata, dbname);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.getWriter().append("url: ").append(url);
		
	}

}
