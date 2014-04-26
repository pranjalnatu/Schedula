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
public class AdditionalInfo_servlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		
		                     
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		UserService userService = UserServiceFactory.getUserService();
	      User user = userService.getCurrentUser();
		
	        //resp.setContentType("text/plain");
		//resp.getWriter().println("Hello, world");
		
						
	      Entity s = (Entity)req.getSession().getAttribute("newUser");
	      s.setProperty("Major" ,"CSE");
          datastore.put(s);	      
	      
          resp.sendRedirect("index.jsp");
	      
	      // resp.sendRedirect("studenthomepage.jsp");	
		
	
	
	
	}


	

}
