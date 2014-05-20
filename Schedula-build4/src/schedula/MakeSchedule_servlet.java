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
public class MakeSchedule_servlet extends HttpServlet {
	
	boolean checkClash = false;
	boolean dayClash = false;   
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		
		                  

		// UserService userService = UserServiceFactory.getUserService();
	      //  User user = userService.getCurrentUser();
		
		PrintWriter out = resp.getWriter();  
	        resp.setContentType("text/plain");
	        
		//resp.getWriter().println("Hello, world");
		
					
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		ArrayList<Entity> classesInSchedule = new ArrayList<Entity>();
		
		String studentId = (String)req.getSession().getAttribute("signedID");
	    System.out.println("Student id "+studentId);
	    String cb = req.getParameter("chutiya");
		System.out.println(cb);
	    String[] results = req.getParameterValues("checkedValues[]");   //req.getParameterValues("checkedClasses");
		System.out.println("results = "+ results.length);
		
		//this if else block checks if no parametres are send then th eprogram doesnt crash and returns not done
		if (results != null)
		{int i = 0;
			while(i < results.length)
		    {
		    
			Filter classFilter = new FilterPredicate("CourseNum", FilterOperator.EQUAL,results[i]);

			Query q = new Query("Classes").setFilter(classFilter);
			PreparedQuery pq = datastore.prepare(q);
			Entity r = pq.asSingleEntity();
			
			String start1 = (String)r.getProperty("StartTime");
			String end1 = (String)r.getProperty("EndTime");
			String day1 = (String)r.getProperty("Days");
			String toDisplay = (String)r.getProperty("CourseNum");
			int size = classesInSchedule.size();
			if (size == 0){
			       classesInSchedule.add(r);
			
			       System.out.println("New Size of Arraylist = "+ classesInSchedule.size());
		         	}
			       else
				
			{
				for(int k = 0; k < size; k++ )
				{
					
			  	String start2 =(String)classesInSchedule.get(k).getProperty("StartTime");	
			  	String end2 =(String)classesInSchedule.get(k).getProperty("EndTime");							
				String day2 = (String)classesInSchedule.get(k).getProperty("Days");
			  
			if ((checkDayClash(day1,day2)))
			    {
				if (clash(start1,end1,start2,end2))
			       {
				  System.out.println("Caught a Clash" + k);
				  checkClash = true;
				  k= size;
				  i = results.length;
				  //String tem = results[i];
				  out.println(toDisplay);
				 
		          	    
			        }//if block timeclash
				else {
					checkClash = false;
				        
				     System.out.println("Not caught" + k);
				}
		      }//dayClash
			else
				checkClash = false;
				
				}//k loop
				
		if (!checkClash)		
		{
			
			System.out.println("Adding " + i);
			classesInSchedule.add(r);
			 System.out.println("New Size of Arraylist = "+ classesInSchedule.size());
		}
				
				
			}//else	
			
			//System.out.println(results[i]); 
			i++;
		    }//for
			System.out.println("New Call");
		for (int j = 0;j < classesInSchedule.size();j++)
		{
			
			System.out.println("entity......"+ classesInSchedule.get(j));
		}//for loop
		
		if (!checkClash)
		out.println("done");
		}//if block result != null
		
		else
			out.println("not done");
		//resp.sendRedirect("studenthomepage.jsp");	
	
	
	}//do get end

	
	
	public boolean checkDayClash(String days1,String days2)
	{
		 dayClash = false;				
	      if (days1.contains(days2) || days2.contains(days1))
	      {
	    	  System.out.println("Comparing " + days1+ " with "+days2);
	    	  dayClash = true;
	      
	      }
	      else
	      {
	      System.out.println("When not Comparing its " + days1+ " with "+days2);
		  dayClash = false;	
	      }
		//System.out.println("Before Exiting value = "+ dayClash);
		return dayClash;
    }
		
		
	
	//
	public String convertDay(String day)
	{
		if (day.equals("TUTH"))
		   day = "TG";
		else if (day.equals("TU")) 
		    day = "T";
		else if (day.equals("TH"))
	        day = "G";
		else
			;

	return day;	
		
	}
	
	
	
	
	//
	public boolean clash(String s1,String e1,String s2,String e2)
	{
			
	int intstart1 = convertTime(s1);
	int intstart2 = convertTime(s2);
	int intend1 = convertTime(e1);
	int intend2 = convertTime(e2);
	
	if ((intstart1 < intend2 && intstart1 > intstart2) || (intend1 < intend2 && intend1 > intstart2) || (intstart1 == intstart2 && intend1 == intend2))
	{
		
		
   return true;		
		
	}
	
else
	
	return false;
		
	}
	
	
	public int convertTime(String s)
	{
		int i = s.indexOf(':');
	    String p1 = s.substring(0,i);	
		String p2 = s.substring(i+1);
		String time = p1+p2;
		int result = Integer.parseInt(time);
		return result;
	}
;
}



















// bull shit backup





/**
else if ((days1.equals("TUTH"))  || (days2.equals("TUTH")))
{
	
	if(days1.equals("TUTH"))
		days1 = "TG";
	else
		days2 = "TG";
	
}

if (days1.equals("TU")|| days2.equals("TU"))
{
	if(days1.equals("TU"))
	{
	   
	days1 = "T";
		
	}
	else
		
	{
		days2 = "T";
	}
}



if (days1.equals("TH")|| days2.equals("TH"))
{
	if(days1.equals("TH"))
	{
	   
	days1 = "G";
		
	}
	else
		
	{
		days2 = "G";
	}
}

 
int l1 = days1.length();
int l2 = days2.length();
char Days1[] = new char[l1];
char Days2[] = new char[l2]; 		

for (int i=0;i<l1;i++)
{
	Days1[i] = days1.charAt(i);
	
}

for (int i=0;i<l2;i++)
{
	Days2[i] = days2.charAt(i);
	
}

for (int i=0;i<l1;i++)
{
	char temp = Days1[i];
	for (int j=0; j<l2; j++)
	{
	
		if(Days2[j] == temp)
			dayClash = true;
		   i =  l1;
		   j = l2;
		  return dayClash; 
		
	}
}



return dayClash;








//jo abhi delete kiya hai
 * dayClash = false;
		
		if (days1.equals(days2))
			{
			 dayClash = true;
		     //return dayClash;
		     }
		//
		else{
			
		String d1 = convertDay(days1);  	
		String d2 = convertDay(days2);  
		
		int l1 = days1.length();
		int l2 = days2.length();
		char Days1[] = new char[l1];
        char Days2[] = new char[l2]; 		
		
		for (int i=0;i<l1;i++)
		{
			Days1[i] = days1.charAt(i);
			
		}
		
		for (int i=0;i<l2;i++)
		{
			Days2[i] = days2.charAt(i);
			
		}
	
		for (int i=0;i<l1;i++)
		{
			char temp = Days1[i];
			for (int j=0; j<l2; j++)
			{
			
				if(Days2[j] == temp)
				  System.out.println("found True between "+ Days2[j]+ "and"+ temp);
					dayClash = true;
				   i =  l1;
				   j = l2;
				
				  // return dayClash; 





}**/

