<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  style="background: url('background-with-white-space.jpg') no-repeat center center fixed; 
			  -webkit-background-size: cover;
			  -moz-background-size: cover;
			  -o-background-size: cover;
			  background-size: cover;">
<head>
<meta charset="UTF-8">
<title> Admin Home</title>
<script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>

</head>

<body>
		<div name="heading" style="background-color:transparent; margin-top:140px; height:90px; width:800px; text-align:center; margin-left:320px;">
			 <h1 style=" text-align:center; color:deeppink; padding:10px; height:10px;">Hello Admin, Welcome to Learners Adminstration</h1>				
	
		</div>
		
		
		<div  style="background-color:transparent; height:350px; width:800px; display: flex; margin-left: 300px;">
		 
		
		    <div name="leftcolumn" id="leftcolumn" style="background-color:lightpink;flex: 25%; diaplsy:flex;text-align:center; font-size: 30px; color:deeppink; margin-top:20px; ">
			    
			    <table width="100%" height:"100%">
						  <tr height="60px">
						    <td name="students" id="students" style="background-color:lightgreen; size: 20%;"> <a href='students.jsp' onclick='show_more_menu()'  style="color:deeppink;"><i>Students</i></a></td>
						  </tr>
						  <tr  height="60px">
						  <td name="teachers" id="teachers" style="background-color:lightpink;flex: 20%;" > <a href='teacher.jsp' onclick='show_more_menu()'  style="color:deeppink;"> <i>Teachers</i></a></td>
						  </tr>
						  
						  <tr  height="60px"> 
						  
						  <td  name="classes" id="classes"   style="background-color:lightgreen;flex: 20%;"><a href='classes.jsp' onclick='show_more_menu()'  style="color:deeppink;"> <i>Classes</i> </a> </td>
						  </tr>
						  
						  <tr height="60px">
						  	<td  name="subjects" id="subjects" style="background-color:lightpink;flex: 20%;"><a href='subjects.jsp' onclick='show_more_menu()'  style="color:deeppink;"> <i>Subjects</i></a></td>
						  </tr>
						  
						  <tr  height="60px">
						  	<td  name="logout" id="logout"  style="background-color:lightgreen;flex: 20%;"><a href='index.jsp' onclick='show_more_menu()'  style="color:deeppink;"><i>logout</i></a></td>
						  </tr>
			
				</table>
			    
		    
		  </div>
		    
			<div right="rightcolumn" id="rightcolumn"   style="background-color:transparent;flex: 75%;" >
			
			 		
				<div>
					<p style="color:deeppink; font-size:23px; text-align:center; margin-top:120px;">
						<i>Learners Academy is one of the best schools that emphasising on unique approaches to education and work towards providing a nurturing environment.</i>
					
					
					</p>
				
				</div>
			
			
			</div>
			
		
		</div>
		
		
		
		
		


</body>





















<!--  
<body>
     <h1> Hi ,${sessionScope.User.username } Welcome to Learners Acadamy</h1>
     
     <a href="addSubject.jsp">add Subject</a>|<a href="addTeacher.jsp">Add Teacher</a>|
     <a href="addClass.jsp">Add Class</a> | <a href="addStudent.jsp">Add student</a>
     
</body>
</html>

-->