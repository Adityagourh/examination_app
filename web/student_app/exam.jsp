<%@page import="java.sql.*"%>
<% 
RequestDispatcher rd;    
Cookie ck[]=request.getCookies();
if(ck!=null)
{
for(int i=0;i<ck.length;i++)
{
    Cookie cookie = ck[i];
    if((cookie.getName()).compareTo("name") == 0)
    {
     String s2=cookie.getValue();
     try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select id from student where uname='"+s2+"'");
    if(rs.next()){
%>
<html>
 <head>
 <title>Exam</title>
     <link rel="stylesheet" href="c.css">
     <link rel="stylesheet" href="c1.css">
 
</head>

<body id="body">
    	<h1>Online Examination</h1>
	
 <%@include file="mymenu.jsp"%>
 		<main>
		<section>
			<h2>Instructions</h2>
			<p>Read the instructions carefully before starting the exam.</p>
			<ol>
				<li>You have 60 minutes to complete the exam.</li>
				<li>The exam consists of 20 multiple-choice questions.</li>
				<li>You must select only one answer for each question.</li>
				<li>Once you submit your answers, you cannot change them.</li>
				<li>Click the submit button to complete the exam.</li>
			</ol>
		</section>
		
		<section>
			<h2>Exam Section</h2>
 <label for="cars">Subject:</label>

 
 <form action="onlineexam.jsp">
 <select id="optionList" name="optionList" onchange="test()">
    <option value="maths">Maths</option>
    <option value="Physics">Physics</option>
    <option value="chem">Chemestry</option>
    <option value="english">English</option>
    <option value="java">Java</option>
  </select>
 <input type="submit" value="Submit" id="button" class="examt">
 </form>
 		
		<section>
			<h2>Results</h2>
			<p>Your exam results will be displayed here.</p>
		</section>
	</main>
	
	<footer>
		<p>&copy; 2023 Online Examination. All rights reserved.</p>
	</footer>
</body>
</html>
  
</body>
</html>
<%
 }
   con.close();
  }           
  catch(Exception e){
  out.println(e);
  }
  }
 }      
}//ck!=null
else
{
    rd=request.getRequestDispatcher("/home.jsp");
    
    rd.include(request, response);
}
%> 