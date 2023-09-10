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
    ResultSet rs=st.executeQuery("select name from login where name='"+s2+"'");
    if(rs.next()){
%>  

<html>
<head>
	<title>College Name - Home</title>
       <style> 
       #submit
  {
      background-color:rgba(87,65,234,0.1);
      width:70px;
      height:40px;
      border:2.5px solid white; 
      border-radius:8px;
      font-size:15px;
  }
  
  #submit:hover{
background-color:rgba(87,65,234,1.0);  
}
       </style>
        <link rel="stylesheet" href="c.css">

        <link rel="stylesheet" type="text/css" href="c1.css">
</head>
 <body id="body" class="body1">
 <header class="header">
		<h1>IPS Academy</h1>
		
	</header>
<%@include file="mymenu.jsp"%>
 
	<main>
            
               
		<section id="banner">
			<h2>Welcome to Indore Public School</h2>
			<p>Enter Questions.</p>
		        <form action="questions.jsp">
                          <input type="submit" value="Insert" id="submit">  
                        </form>	
                </section>
                
                	<section id="admissions">
			<h2>New Student Click here</h2>
                        <form action="regis.jsp">
                     <th colspan="2"><input type="submit"value="Register"  id="submit"></th>
 		      </form>	
                     <a href="update.jsp" class="button">Already Register</a>
		</section>
	
	
		<section id="about">
			<h2>About Us</h2>
			<p>IPS Academy, a premier institution of Central India, has become a celebrated brand name & has carved a unique identity for itself as a center of excellence in the entire country due to a variety of reasons....</p>
		<a href="about.html" class="button">Read More</a>
		</section>
</main>

	<footer>
		<p>&copy; 2023 IPS Academy All rights reserved.</p>
	</footer>
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