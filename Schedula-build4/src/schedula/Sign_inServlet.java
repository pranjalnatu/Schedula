package schedula;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
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
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.CompositeFilter;
import com.google.appengine.api.datastore.Query.CompositeFilterOperator;
import com.google.appengine.api.datastore.Query.SortDirection;


@SuppressWarnings("serial")
public class Sign_inServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		PrintWriter out = resp.getWriter();  
 	   resp.setContentType("text/html");
		
		
		  DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();

		  
		  String ID = req.getParameter("Id");
		  String pass = req.getParameter("Password");
		  
		
		
		    //Key studentId = KeyFactory.createKey("Id",ID);	        
	        
	        
		    Filter studentFilter = new FilterPredicate("ID", FilterOperator.EQUAL,ID);

		    		Query q = new Query("Student").setFilter(studentFilter);

                   PreparedQuery pq = datastore.prepare(q);
                   Entity result = pq.asSingleEntity();
                   
                                
                   HttpSession session = req.getSession();
      		     
      		     
      		     BufferedReader br = null;
      				try {
      					 
      					
      		 
      					br = new BufferedReader(new FileReader("Courses.txt"));
      					String sCurrentLine = br.readLine();
      					
      					do {
      					  // sCurrentLine = 	br.readLine();
      						//CourseID
      						//CourseCode
      						//CourseName
      						//SectionNo.
      						//Category
      						//StartTime
      						//EndTime
      						//Days
      						//ProfessorID
      						   String courseId = sCurrentLine;
      						   String courseCode = br.readLine();
      						   String courseName = br.readLine();
      						   String sectionNo = br.readLine();
      						   String category = br.readLine();
      						   String startTime = br.readLine();
      						   String endTime = br.readLine();
      						   String days = br.readLine();
      						   String professorId = br.readLine();
      						    
      					       // Key cseKey = KeyFactory.createKey("Course",courseId);
      					        //String content = req.getParameter("content");
      					        //Date date = new Date();
      					        //
      						    Entity cse = new Entity("Classes",courseId);
      					        cse.setProperty("CourseNum", courseId);
      					        cse.setProperty("CourseCode",courseCode);
      					        cse.setProperty("CourseName",courseName);
      					        cse.setProperty("SectionNo", sectionNo);
      					        cse.setProperty("Category",category);
      					        cse.setProperty("StartTime",startTime);
      					        cse.setProperty("EndTime",endTime);
      					        cse.setProperty("Days",days);
      					        cse.setProperty("ProfessorId",professorId);
                                  datastore.put(cse);
                                  sCurrentLine = br.readLine();
      	 
      					}while ((sCurrentLine) != null); 
      		 
      				} catch (IOException e) {
      					e.printStackTrace();
      				} finally {
      					try {
      						if (br != null)br.close();
      					} catch (IOException ex) {
      						ex.printStackTrace();
      					}
      				}

      		 
      			
      	    // resp.sendRedirect("studenthomepage.jsp");	
      		
      	
      	
      	
             
     
        
       	
          
                   
                   
                  
                   
                   
                   
                   if (result != null) 
                   {
                	
                	   
                	   String retId = (String)result.getProperty("ID");
                       String retPass = (String)result.getProperty("Password");
                       
                      String name = (String)result.getProperty("FirstName");
                       if(retPass.equals(pass))
                    	   
                         
                       
                       {    
                    	   String major = (String)result.getProperty("Major");	
                    	  //req.get.setAttribute("Name",name);
                    	  session.setAttribute("Name", name);
                    	  session.setAttribute("Major", major);
                    	  session.setAttribute("signedId",ID);
                    	   //req.setAttribute("ID", retId);
                            out.println(1);
                    	  
                          //req.getSession().setAttribute("firstName",name);
                         
                         // req.getRequestDispatcher("/log_in").forward(req,resp);
                    	//resp.sendRedirect("studenthomepage.jsp");
                       
                       }
                       else
                    	   {
                    	   
                    	   //resp.sendRedirect("index.jsp");
                    	   
                    	                	                    	   
                    	   out.println("Invalid Password"); 
                    	   }
                   
                   }     
                	   else
                   {
                	 
                    
                    
                  
               		
                    //req.getRequestDispatcher("/index.jsp").include(req, resp);
                      
                    //out.println("<script type=\"text/javascript\">");  
               		//out.println("alert('Invalid Id or Password');");  
               		//out.println("logout();");
               		//out.println("</script>");  
               		out.println("Invalid user name");
               		//resp.sendRedirect("/index.jsp");
               		
                	   
                	   
                   }
                	   //String a = (String) result.getProperty("FirstName");
	    
	        
	        //if (pass == confirm)
	        {
	        
	        
	      
	        
	      
	        
             
	      //  RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(req.getPathInfo());

	     /**   try {
				dispatcher.forward(req,resp);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	 **/       
	        }
	        
/**	        else 
	        {
	        	
	        	resp.sendRedirect("/");
	        	
	        }**/
	
	}



}
