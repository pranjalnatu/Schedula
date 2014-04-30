package schedula;

import java.io.IOException;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;


@SuppressWarnings("serial")
public class Sign_upAdvisorServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {

		String first = req.getParameter("First_Name");
		String last = req.getParameter("Last_Name");
		String major = req.getParameter("Advising_Major");
		String ID = req.getParameter("Id");
		String pass = req.getParameter("Password");
		String confirm = req.getParameter("Confirm");
		String phone  = req.getParameter("Phone");

		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();

		Filter advisorFilter = new FilterPredicate("ID", FilterOperator.EQUAL,ID);
		Query q = new Query("Advisor").setFilter(advisorFilter);

		PreparedQuery pq = datastore.prepare(q);
		Entity result = pq.asSingleEntity();

		if (result == null)
		{
			//Key studentId = KeyFactory.createKey("Id",ID);	        
			Date date = new Date();

			Entity advisors = new Entity("Advisor",ID);

			if (pass.equals(confirm))
			{
				System.out.println("Hello here");
				advisors.setProperty("FirstName",first);
				advisors.setProperty("Last",last);
				advisors.setProperty("AdvisingMajor", major);
				advisors.setProperty("ID",ID);
				advisors.setProperty("Password", pass);
				advisors.setProperty("Phone",phone);

				req.getSession().setAttribute("newUser", advisors);
				datastore.put(advisors);

				resp.sendRedirect("index.jsp");
			}
			else
				resp.sendRedirect("newAdvisor.jsp");

			//  RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(req.getPathInfo());

			/**   try {
				dispatcher.forward(req,resp);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 **/       
		}



		else 
		{

			resp.sendRedirect("newAdvisor.jsp");

		}

	}



}
