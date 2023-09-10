
<%@page import="java.sql.* "%>

<html>
<head>
<link rel="stylesheet" href="c.css">
</head>
<body id="body">
<%@include file="mymenu.jsp"%>
<div id="data">
<center>
<form action="update.jsp">
<table cellpadding="12">
<tr>
<th>Enter roll no.</th>
<th><input type="text" placeholder="Enter roll no." class="text" name="rn"></th>
</tr>
<tr>
<th colspan="3"><input type="submit" value="Search" class="t" name="n1"></th>
</tr>
</table>
</form>
</center> 
<% String p1=request.getParameter("n1");
  if(p1!=null)
  {
  String p12=request.getParameter("rn");
  try{

    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select *from student AS c INNER JOIN student_marks AS st ON c.id = st.id where c.id="+p12+" ");
   %><center><div id="div1"><%
  if(rs.next())
    { %>
        <form action="update.jsp">
        <table cellpadding="12">
            
         <tr>
          <td> Name</td>
          <th><input type="text" value="<%=rs.getString(2)%>"class="text" name="name"></th>
         </tr>
         
         <tr>
          <td>Password</td>
          <th><input type="text" value="<%=rs.getString(6)%>"class="text" name="pass"></th>
         </tr>
         
          <tr>
          <td>Rollno</td>
          <th><input type="text" value="<%= rs.getString(1)%>"class="text" name="rn"></th>
         </tr
          <tr>
          <td>Maths</td>
          <th><input type="text" value="<%=rs.getString(10)%>"class="text" name="physics"></th>
         </tr>
          <tr>
          <td>Phyiscs</td>
          <th><input type="text" value="<%=rs.getString(11)%>"class="text" name="maths"></th>
         </tr>
          <tr>
          <td> Chemestry</td>
          <th><input type="text" value="<%=rs.getString(12) %>"class="text" name="chem"></th>
         </tr>
         <tr>
          <td>Java</td>
          <th><input type="text" value="<%=rs.getString(13) %>"class="text" name="java"></th>
         </tr>
         <tr>
         <th><input type="submit" name="b2" value="Update"class="t">
         </tr>
        </table>
         </form>      
<%}
  else{
  out.println("Invalid data");
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
<% String s12=request.getParameter("b2");
if(s12!=null)
{
String s21=request.getParameter("name");
String s22=request.getParameter("pass");
String s23=request.getParameter("rn");
String s24=request.getParameter("physics");
String s25=request.getParameter("maths");
String s26=request.getParameter("chem");
String s27=request.getParameter("java");

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st=con.createStatement();
    int x= st.executeUpdate("update student_marks set maths='"+s25+"',physics='"+s24+"',chem='"+s26+"',java='"+s27+"' where id='"+s23+"'");
    response.sendRedirect("update.jsp");
    con.close();      
}
catch(Exception e)
 {
  out.println(e);
 }
}
%>
   