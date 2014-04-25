package schedula;

import java.io.FileReader;
import java.io.IOException;

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
public class DisplayClass_servlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		
		                     
		  
		
		// UserService userService = UserServiceFactory.getUserService();
	      //  User user = userService.getCurrentUser();
		
	        //resp.setContentType("text/plain");
		//resp.getWriter().println("Hello, world");
		
		
		
		  DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		 
		  String major = (String)req.getSession().getAttribute("Major");
		  
		  
		    Filter newFilter = new FilterPredicate("Category", FilterOperator.EQUAL, major);

		    		Query q = new Query("Classes").setFilter(newFilter);

                 PreparedQuery pq = datastore.prepare(q);
                 ArrayList<ClassObj> list = new ArrayList<ClassObj>();
		         
                 for (Entity result : pq.asIterable()) {
               	  
                	 String coursesCode = (String)result.getProperty("CourseCode");
                	 String courseNum   = (String)result.getProperty("CourseNum");
                	 String courseName = (String)result.getProperty("CourseName");
                	 String sectionNo  = (String)result.getProperty("SectionNo");
                	 String category = (String)result.getProperty("Category");
                	 String start = (String)result.getProperty("StartTime");
                	 String end = (String)result.getProperty("EndTime");
                	 String days = (String)result.getProperty("Days");
                	 String proffId = (String)result.getProperty("ProfessorId");
                	 

                	 ClassObj temp = new ClassObj(courseNum,coursesCode,courseName,sectionNo,category, start,end, days, proffId);
                	 
                       list.add(temp);
                	 
                	 
                	 
                	 // String lastName = (String) result.getProperty("lastName");
               	    //Long height = (Long) result.getProperty("height");
                    // classList.add(Courses);
               	  }
                 
                 req.getSession().setAttribute("List", list);
               
                //String json = helper.writeJSON(pq.asIterable());
               // out.println(json);
       		 
       		//req.getSession().setAttribute("ClassList",classList); 
       		   
       		
                 
                     
                 
		  
	       resp.sendRedirect("AddMajorClasses.jsp");	
		
	
	
	
	}


	

}


