package schedula;

import java.io.FileReader;
import java.io.IOException;

import javax.servlet.http.*;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

import java.io.BufferedReader;
import java.util.Date;
@SuppressWarnings("serial")
public class MakeSchedule_servlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		
		                     

		// UserService userService = UserServiceFactory.getUserService();
	      //  User user = userService.getCurrentUser();
		
	        //resp.setContentType("text/plain");
		//resp.getWriter().println("Hello, world");
		
						
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		
		String studentId = (String)req.getSession().getAttribute("signedId");
		
		String[] results = req.getParameterValues("checkedClasses");
		for (int i = 0; i < results.length; i++) {
		    System.out.println(results[i]); 
		    
		   
		}
		
		
		
		//resp.sendRedirect("studenthomepage.jsp");	
		
	
	
	
	}


	

}


