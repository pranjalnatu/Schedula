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
	      String m = req.getParameter("selectClass");
	      s.setProperty("Major",m);
          req.getSession().setAttribute("Major", m);
          
          
          //this code will add all the major classes taken by the user to a seperate tuple 
          //keeping track of classes by course code;
          String id = (String)s.getProperty("ID");
          String majorTuple = id+1;
          
          
          String[] classesTaken  = req.getParameterValues("vv");
          for (int i = 0; i < classesTaken.length; i++) {
  		   
        	  Entity studentMajorTaken = new Entity(majorTuple);
        	  studentMajorTaken.setProperty("CourseCode",classesTaken[i]); 	  
        	  datastore.put(studentMajorTaken);
        	  System.out.println(classesTaken[i]); 
           		}
          
          
          
          //
          //String id = (String)s.getProperty("ID");
          String DecTuple = id+2;
          
          
          String[] decsTaken  = req.getParameterValues("vehicle");
          for (int i = 0; i < decsTaken.length; i++) {
        	  Entity studentDecTaken = new Entity(DecTuple);
          studentDecTaken.setProperty("Category",decsTaken[i]); 	  
        	  
        	  System.out.println(decsTaken[i]); 
        	  datastore.put(studentDecTaken);
              
           		}
          
          
          
          
	      datastore.put(s);	      
	      
          resp.sendRedirect("index.jsp");
	      
	      // resp.sendRedirect("studenthomepage.jsp");	
		
	
	
	
	}


	

}
