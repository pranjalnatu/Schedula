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
		         
                 
                 ClassObj o = new ClassObj() ;
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
                	 Filter rateFilter = new FilterPredicate("ProffId",FilterOperator.EQUAL,proffId);        
                     Query qRate = new Query("ProfessorTable").setFilter(rateFilter);
        	         PreparedQuery pRate = datastore.prepare(qRate);
                     Entity rateEntity = pRate.asSingleEntity();
                	  
                     if (rateEntity != null)
                     {
                    	 String fn = (String)rateEntity.getProperty("Pfirst");
                     	 String ln = (String)rateEntity.getProperty("Plast");
                     	 String pname = fn+ " "+ln;
                    	 proffId = pname;
                     
                     } 	 
                    	 ClassObj temp = new ClassObj(courseNum,coursesCode,courseName,sectionNo,category, start,end, days, proffId);
                	 
                       list.add(temp);
                	 
                	 
                	 
                	 // String lastName = (String) result.getProperty("lastName");
               	    //Long height = (Long) result.getProperty("height");
                    // classList.add(Courses);
               	  }
                 
                // String s = list.get(0).getCourseCode();
                //req.getSession().setAttribute("S",s);
                 req.getSession().setAttribute("List", list);
                 
                //String json = helper.writeJSON(pq.asIterable());
               // out.println(json);
       		 
       		     
                 
                 
                 
     		    
     		   Filter decFilterA = new FilterPredicate("Category",FilterOperator.EQUAL,"A");
     		  Filter decFilterB = new FilterPredicate("Category",FilterOperator.EQUAL,"B");
     		 Filter decFilterC = new FilterPredicate("Category",FilterOperator.EQUAL,"C");
     		Filter decFilterD = new FilterPredicate("Category",FilterOperator.EQUAL,"D");
     		Filter decFilterE = new FilterPredicate("Category",FilterOperator.EQUAL,"E");
     		Filter decFilterF = new FilterPredicate("Category",FilterOperator.EQUAL,"F");
     		Filter decFilterG = new FilterPredicate("Category",FilterOperator.EQUAL,"G");
     		Filter decFilter = new FilterPredicate("Category",FilterOperator.EQUAL,"G");
 		    
 		    
   		    
                
     		    Query qdec = new Query("Classes").setFilter(decFilter);
	    		

	    		
	    		 
	    		
          PreparedQuery pqdec = datastore.prepare(qdec);
          ArrayList<DecObj> listDec = new ArrayList<DecObj>();
	         
          
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
         	 
         	 
         	 Filter rateFilter = new FilterPredicate("ProffId",FilterOperator.EQUAL,proffId);        
             Query qRate = new Query("ProfessorTable").setFilter(rateFilter);
	         PreparedQuery pRate = datastore.prepare(qRate);
             Entity rateEntity = pRate.asSingleEntity();
             if (rateEntity != null){
         	 String easiness = (String)rateEntity.getProperty("Peasiness");
         	 String overall = (String)rateEntity.getProperty("Poverall");
         	 String help = (String)rateEntity.getProperty("Phelp");
         	 String quality = (String)rateEntity.getProperty("Pquality");
         	 String fn = (String)rateEntity.getProperty("Pfirst");
         	 String ln = (String)rateEntity.getProperty("Plast");
         	 String proffName = fn+ " "+ln;

         DecObj temp = new DecObj(courseNum,coursesCode,courseName,sectionNo,category, start,end, days, proffId,proffName,easiness,help,overall,quality);
         
         listDec.add(temp);
             }
         	 
         	 
         	 // String lastName = (String) result.getProperty("lastName");
        	    //Long height = (Long) result.getProperty("height");
             // classList.add(Courses);
        	  }
          
          //String s = list.get(0).getCourseCode();
         //req.getSession().setAttribute("S",s);
          req.getSession().setAttribute("ListofDecs",listDec);
          
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
		  
	       resp.sendRedirect("AddMajorClasses.jsp");	
		
	
	
	
	}


	

}


