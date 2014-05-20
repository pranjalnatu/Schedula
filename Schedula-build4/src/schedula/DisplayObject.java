package schedula;

import java.io.Serializable;



public class DisplayObject implements Serializable {
	   
	   String courseId ;
	   String courseCode ;
	   String courseName ;
	   String sectionNo ;
	   String category ;
	   int startTime ;
	   int endTime ;
	   String days ;
	   String professorId ;
       int interval;
       String time;
       int sPos;

public DisplayObject(String cId,String cCode, String cName,String secNo, String cat, int start, int end, String d, String profId, int inter,String t,int pos)
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
	   interval = inter;
       time = t;
       sPos = pos;
}


public DisplayObject(){}




public int getPos()
{return sPos;}

public void setPos(int n)
{
sPos = n;
}




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

public int getStartTime()
{
	return startTime;
}

public void setStartTime(int startTime1)
{
	this.startTime = startTime1;
}

public int getEndTime()
{
	return endTime;
}

public void setEndTime(int endTime1)
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









}
