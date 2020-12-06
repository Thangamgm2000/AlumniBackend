package ServletPackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletResponse;
import Model.SearchBase;
import Model.PerformSearch;
import java.util.ArrayList;

/**
 * Servlet implementation class ProfileServe
 */
@WebServlet("/HandleSearch")
public class HandleSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandleSearch() {
        super();
	}
	
	public SearchBase setterMethod(HttpServletRequest request) {
		SearchBase searchObj = new SearchBase();

		System.out.println(
			request.getParameter("anyName")+" "+
			request.getParameter("rollNumber")+" "+
			request.getParameter("academicBatch")+" "+
			request.getParameter("courseEnrolled")+" "+
			request.getParameter("latestJob")
		);

		if (request.getParameter("anyName")!=null)	searchObj.setAnyName((String)request.getParameter("anyName"));
		if (request.getParameter("rollNumber")!=null)	searchObj.setRollNumber((String)request.getParameter("rollNumber"));
		if (request.getParameter("academicBatch")!=null)	searchObj.setAcademicBatch((String)request.getParameter("academicBatch"));
		if (request.getParameter("courseEnrolled")!=null)	searchObj.setCourseEnrolled((String)request.getParameter("courseEnrolled"));
		if (request.getParameter("latestJob")!=null)	searchObj.setLatestJob((String)request.getParameter("latestJob"));
		
		return searchObj;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
		
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		SearchBase searchObj = setterMethod(request);

		ArrayList<SearchBase> searchResults = PerformSearch.dbSearch(searchObj);

		request.setAttribute("searchResults",searchResults);

		RequestDispatcher rd = request.getRequestDispatcher("search_results.jsp");
        rd.forward(request, response);
	}

}