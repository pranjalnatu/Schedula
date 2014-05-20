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
public class DisplayDec_Servlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		
		 DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();              
		  
		
		// UserService userService = UserServiceFactory.getUserService();
	      //  User user = userService.getCurrentUser();
		
	        //resp.setContentType("text/plain");
		//resp.getWriter().println("Hello, world");
		
		//getting the signed in user				
		 String id = (String)req.getSession().getAttribute("ID");
          String decTuple = id + 2;		  
		  
		    Filter decFilter = new FilterPredicate("Category",FilterOperator.EQUAL, "G");

            
          
                    Query qdec = new Query("Classes").setFilter(decFilter);
		    		

		    		
		    		 
		    		
              PreparedQuery pqdec = datastore.prepare(qdec);
              ArrayList<ClassObj> listDec = new ArrayList<ClassObj>();
		         
              
              //ClassObj o = new ClassObj() ;
              for (Entity resultDec : pqdec.asIterable()) {
            	  
             	 String coursesCode = (String)resultDec.getProperty("CourseCode");
             	 String courseNum   = (String)resultDec.getProperty("CourseNum");
             	 String courseName = (String)resultDec.getProperty("CourseName");
             	 String sectionNo  = (String)resultDec.getProperty("SectionNo");
             	 String category = (String)resultDec.getProperty("Category");
             	 String start = (String)resultDec.getProperty("StartTime");
             	 String end = (String)resultDec.getProperty("EndTime");
             	 String days = (String)resultDec.getProperty("Days");
             	 String proffId = (String)resultDec.getProperty("ProfessorId");
             	 

             	 ClassObj temp = new ClassObj(courseNum,coursesCode,courseName,sectionNo,category, start,end, days, proffId);
             	 
                    listDec.add(temp);
             	 
             	 
             	 
             	 // String lastName = (String) result.getProperty("lastName");
            	    //Long height = (Long) result.getProperty("height");
                 // classList.add(Courses);
            	  }
              
              //String s = list.get(0).getCourseCode();
             //req.getSession().setAttribute("S",s);
              req.getSession().setAttribute("ListofDecs",listDec);
              //req.getSession().setAttribute("O",o);
             //String json = helper.writeJSON(pq.asIterable());
            // out.println(json);
    		 
    		//req.getSession().setAttribute("ClassList",classList); 
    		   
    		
              
               //   req.getSession().setAttribute("ruzin", "dbs");
              
		  
	       resp.sendRedirect("AddMajorClasses.jsp");	
		
	

		
	
	
	
	}


	

}


