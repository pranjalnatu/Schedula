package schedula;

import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.Math;
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
import com.google.appengine.labs.repackaged.org.json.JSONArray;
import com.google.gson.Gson;

import java.io.BufferedReader;
import java.util.ArrayList;
import java.util.Date;
@SuppressWarnings("serial")
public class Preview_servlet extends HttpServlet {
	
	boolean checkClash = false;
	boolean dayClash = false;   
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		
		                  

		// UserService userService = UserServiceFactory.getUserService();
	      //  User user = userService.getCurrentUser();
		
		PrintWriter out = resp.getWriter();  
	       // resp.setContentType("text/plain");
	        
		//resp.getWriter().println("Hello, world");
		
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		ArrayList<DisplayObject> classesInSchedule = new ArrayList<DisplayObject>();
		
		
		String studentId = (String)req.getSession().getAttribute("signedID");
	    System.out.println("Student id "+studentId);
		String[] results = req.getParameterValues("allClasses[]");   //req.getParameterValues("checkedClasses");
         
		
		if (results != null){
		System.out.println("results = "+ results.length);
		
		
		for (int i = 0;i<results.length;i++)
		{
			
			
	    Filter classFilter = new FilterPredicate("CourseNum", FilterOperator.EQUAL,results[i]);
		Query q = new Query("Classes").setFilter(classFilter);
		PreparedQuery pq = datastore.prepare(q);
		Entity r = pq.asSingleEntity();
		String sTime = (String)r.getProperty("StartTime");
		String eTime = (String)r.getProperty("EndTime");
		
		int startTime = convertTime(sTime);
		int endTime = convertTime(eTime);
		
		   String time = toTwelveHour(startTime) + "-" + toTwelveHour(endTime);
		   String courseId = (String)r.getProperty("CourseNum");
		   String courseCode =(String)r.getProperty("CourseCode");
		   String courseName =(String)r.getProperty("CourseName");
		   String sectionNo = (String)r.getProperty("SectionNo");
		   String category = (String)r.getProperty("Category");
		   String days = (String)r.getProperty("Days");
		   String professorId = (String)r.getProperty("ProfessorId"); 
		  
		   int diff = endTime - startTime;
		   double num = diff/50;
		   int interval = (int)Math.ceil(num);
		   int position = getStartPos(startTime);
		   
		  // String time = 
		   DisplayObject tem = new DisplayObject(courseId,courseCode,courseName,sectionNo,category,startTime,endTime,days,professorId,interval,time,position);
		  
		   
		   classesInSchedule.add(tem);
		   //String json = (new JSONArray(classesInSchedule)).toString();	
	      // System.out.println(json); 
		   //out.println(json);	
		
		//Construct a json Object having these arguments
		   
		
		
		
		
		
		
		
		}
		
	          
		Gson gson = new Gson();
		String json1 = gson.toJson(classesInSchedule);
	    System.out.println(json1);
		 
		
//		  out.println(json1);
		
		   out.println(json1);
		}
else 
               out.println("1");			
			
	
	}//do get end

	
	
	public String toTwelveHour(int t)
	{
		
		if (t>=1300)
			
			t = t - 1200; 
		
		
		
	String strTime = t + "";
	 
	String p1 = "";
	String p2= "";
	
	if (strTime.length()==4){
	  p1 = strTime.substring(0,2);	
	  p2 = strTime.substring(2);
	}
	else if (strTime.length()==3){
		  p1 = strTime.substring(0,1);	
		  p2 = strTime.substring(1);
		}
	
	String time = p1 +":"+p2;
	
	
	return time;
		
	}
	
	
		public int getStartPos(int time)
		{
			int r =  time%100;
			if(r == 30)
				time = time + 20;
			else if (r == 20)
			  time = time + 30 ;
		
			return time;
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

