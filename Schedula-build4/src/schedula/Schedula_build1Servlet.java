package schedula;

import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.*;

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

import java.io.BufferedReader;
import java.util.ArrayList;
import java.util.Date;
@SuppressWarnings("serial")
public class Schedula_build1Servlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		// UserService userService = UserServiceFactory.getUserService();
	      //  User user = userService.getCurrentUser();
		
		PrintWriter out = resp.getWriter();  
	 	  // resp.setContentType("application/json");
		/**	
		String t = req.getParameter("selectClass");
		String temp ;
		if (t.equals("Computer Science"))
		{temp = "CSE"; }
		else if ((t).equals("Applied Mathematics and Statistics"))
		{temp = "AMS";}
		else if ((t).equals("Mechanical Engineering"))
		{
			temp = "MEC";
		}
		**/
		
		//String[] valueList = req.getParameterValues("selectClass");
		//String v = req.getParameter("selectClass");
		
		String demo = req.getParameter("majorVal");
	     
		//resp.setContentType("text/plain");
		//resp.getWriter().println("Hello, world");
		
	 	   DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	       
		 Filter classFilter = new FilterPredicate("Category", FilterOperator.EQUAL,demo);
  
    		Query q = new Query("Classes").setFilter(classFilter);

        PreparedQuery pq = datastore.prepare(q);
        
        ArrayList<String> classList = new ArrayList<String>();
        /**while (result.iterator().hasNext())
        {
        	String temp = (String)result.iterator().next().getProperty("CourseCode");
            classList.add(temp);	
        	
        }**/
        
        
        for (Entity result : pq.asIterable()) {
        	  String Courses = (String) result.getProperty("CourseCode");
        	 // String lastName = (String) result.getProperty("lastName");
        	  //Long height = (Long) result.getProperty("height");
              classList.add(Courses);
        	     }
        
        String json = helper.writeJSON(pq.asIterable());
       // System.out.println("okay"+json);
        out.println(json);
		 
		req.getSession().setAttribute("ClassList",classList); 
		   
		
		// Entity e = datastore.get();
		 
		     
		 /**    					
		 
		
	
	**/
	 	   //out.println("tutty");
	
	}


	

}


