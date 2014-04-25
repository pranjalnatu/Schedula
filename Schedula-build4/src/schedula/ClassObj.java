package schedula;

public class ClassObj {
	   
	   String courseId ;
	   String courseCode ;
	   String courseName ;
	   String sectionNo ;
	   String category ;
	   String startTime ;
	   String endTime ;
	   String days ;
	   String professorId ;



public ClassObj(String cId,String cCode, String cName,String secNo, String cat, String start, String end, String d, String profId)
{	
	   String courseId = cId ;
	   String courseCode = cCode;
	   String courseName= cName ;
	   String sectionNo  = secNo;
	   String category  =  cat ;
	   String startTime = start;
	   String endTime  = end;
	   String days = d;
	   String professorId = profId ;
}


public ClassObj(){}

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









}
