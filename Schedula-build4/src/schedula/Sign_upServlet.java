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
public class Sign_upServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		
		
		String first = req.getParameter("First_Name");
		String last = req.getParameter("Last_Name");
		String ID = req.getParameter("Id");
		String pass = req.getParameter("Password");
		String confirm = req.getParameter("Confirm");
		String phone  = req.getParameter("Phone");
		
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		 
	            Filter studentFilter = new FilterPredicate("ID", FilterOperator.EQUAL,ID);
                Query q = new Query("Student").setFilter(studentFilter);

               PreparedQuery pq = datastore.prepare(q);
               Entity result = pq.asSingleEntity();
		
               if (result == null)
               {
		
		    //Key studentId = KeyFactory.createKey("Id",ID);	        
	        Date date = new Date();
	        
	        
	        
	        Entity students = new Entity("Student",ID);
	        

	        
	        
	        if (pass.equals(confirm))
	        {
	        
	        students.setProperty("FirstName",first);
	        students.setProperty("Last",last);
	        students.setProperty("ID",ID);
	        students.setProperty("Password", pass);
            students.setProperty("Phone",phone);
	        
	        req.getSession().setAttribute("newUser",students);
            //datastore.put(students);
	        
	        resp.sendRedirect("classinfo.jsp");
	        }
	        else
	        	resp.sendRedirect("newstudent1.jsp");
	        	
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
	        	
	        	resp.sendRedirect("newstudent1.jsp");
	        	
	        }
	
	}



}
