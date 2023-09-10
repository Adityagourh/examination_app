<%@page import="java.sql.* "%>

<% 
Cookie ck[]=request.getCookies();
if(ck!=null)
{
%>
<html>
<head>
<link rel="stylesheet" href="css_folder/c.css">
<style>
  #div1
  {
      margin-top:80px;
  }          
</style>
</head>
<body id="body">
<%@include file="mymenu.jsp"%>
<div id="data">
<center>
    <div id="div1">
    <form action="admin_app/questions.jsp">
<table cellpadding="12">
<tr>
<th>Question</th>
<th><input type="text" placeholder="Question" class="text" name="question"></th>
</tr>
<tr>
<th>A</th>
<th><input type="text" placeholder="Option A" class="text" name="option_a"></th>
</tr>
<tr>
<th>B</th>
<th><input type="text" placeholder="Option B" class="text" name="option_b"></th>
</tr>
<tr>
<th>C</th>
<th><input type="text" placeholder="Option C" class="text" name="option_c"></th>
</tr>
<tr>
<th>D</th>
<th><input type="text" placeholder="Option D " class="text" name="option_d"></th>
</tr>
<tr>
<th>Correct Option</th>
<th><input type="text" placeholder="Correct Option" class="text" name="correct_ans"></th>
</tr>
<tr>
<th colspan="2"><input type="submit" value="Insert" class="t" name="b2"></th>
</tr>
</table>
 </div>
</center>
</form>
</body>
</html>
<% }
else
{
out.println("you can not enter directly");

}
%>   
<% String s12=request.getParameter("b2");
if(s12!=null)
{
String s1=request.getParameter("question");
String s2=request.getParameter("option_a");
String s3=request.getParameter("option_b");
String s4=request.getParameter("option_c");
String s5=request.getParameter("option_d");
String s6=request.getParameter("correct_ans");
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st=con.createStatement();
    int x =st.executeUpdate("insert into chem(question,option_a,option_b,option_c,option_d,correct_ans) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
    response.sendRedirect("admin_app/questions.jsp");
    con.close();      
}
catch(Exception e)
 {
  out.println(e);
 }
}
%>
   