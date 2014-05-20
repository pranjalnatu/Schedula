package schedula;

import java.io.Serializable;



public class DecObj implements Serializable {
	   
	   String courseId ;
	   String courseCode ;
	   String courseName ;
	   String sectionNo ;
	   String category ;
	   String startTime ;
	   String endTime ;
	   String days ;
	   String professorId ;
       String proffName ;
       String easiness;
       String help;
       String overall;
       String quality;
       

public DecObj(String cId,String cCode, String cName,String secNo, String cat, String start, String end, String d, String profId,String proffname,String erate,String hrate,String orate,String qrate )
{	
	    courseId = cId ;
	   courseCode = cCode;
	   courseName= cName ;
	   sectionNo  = secNo;
	   category  =  cat ;
	   startTime = start;
	   endTime  = end;
	   days = d;
	   professorId = profId ;
	   proffName = proffname;
       easiness = erate;
       help = hrate;
       quality = qrate;
       overall = orate; 
}


public DecObj(){}

public String getCourseId()
{
	return courseId;
}

public void setCourseId(String courseId1)
{
	this.courseId = courseId1;
}

public String getCourseCode()
{
	return courseCode;
}

public void setCourseCode(String courseCode1)
{
	this.courseCode = courseCode1;
}

public String getCourseName()
{
	return courseName;
}

public void setCourseName(String courseName1)
{
	this.courseName = courseName1;
}

public String getSectionNo()
{
	return sectionNo;
}

public void setSectionNo(String sectionNo1)
{
	this.sectionNo = sectionNo1;
}

public String getCategory()
{
	return category;
}

public void setCategory(String category1)
{
	this.category = category1;
}

public String getStartTime()
{
	return startTime;
}

public void setStartTime(String startTime1)
{
	this.startTime = startTime1;
}

public String getEndTime()
{
	return endTime;
}

public void setEndTime(String endTime1)
{
	this.endTime = endTime1;
}

public String getDays()
{
	return days;
}

public void setDays(String days1)
{
	this.days = days1;
}


public String getProfessorId()
{
	return professorId;
}

public void setProfessorId(String professorId1)
{
	this.professorId = professorId1;
}



public String getProffName()
{
	return proffName;
}

public void setProffName(String p)
{
	proffName = p;
}



public String getEasiness()
{
return easiness;	
}

public void setEasiness(String e)
{
easiness = e;	
}



public String getHelp()
{
return help;	
}

public void setHelp(String h)
{
help = h;	
}



public String getOverall()
{
	return overall;

}

public void setOverall(String o)
{
	overall = o;
}



public String getQuality()
{
	return quality;
}


public void setQuality(String q)
{
	
quality = q;

}



}
