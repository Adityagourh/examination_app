
<%@page import="java.sql.* "%>

<html>
<head>
<link rel="stylesheet" href="c.css">
</head>
<body id="body">
<%@include file="mymenu.jsp"%>
<div id="data">
<center>
<form action="delete.jsp">
<table cellpadding="12">
<tr>
<th>Enter Name</th>
<th><input type="text" placeholder="Name" class="text" name="name"></th>
</tr>
<tr>
<th>Enter roll no.</th>
<th><input type="text" placeholder="Enter roll no." class="text" name="rn"></th>
</tr>
<tr>
<th colspan="3"><input type="submit" value="delete" class="t" name="n1"></th>
</tr>
</table>
</form>
</center> 
<% String p1=request.getParameter("n1");
  if(p1!=null)
  {
  String p11=request.getParameter("name");
  String p12=request.getParameter("rn");
   try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st=con.createStatement();
    int x= st.executeUpdate("delete from student where name='"+p11+"'AND id='"+p12+"'");
    if(x!=0)
    {
        try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con1=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st1=con.createStatement();
    int x1= st1.executeUpdate("delete from student_marks where id='"+p12+"'");
    if(x1!=0){
        response.sendRedirect("show.jsp");
    }
    con.close();
        }
        catch(Exception e){}
    }
    else
    {
    out.println("Invalid");
    }
    con.close();      
}
catch(Exception e)
 {
  out.println(e);
 }
}
%>
<center> 
</body>
</html>
