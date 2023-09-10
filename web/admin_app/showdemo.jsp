
<%@page import="java.sql.*"%>
<html>
  <head>
  <link rel="stylesheet" href="css_folder/c.css">  
  <style>
      #div1{
           border:1px;
           margin-top:100px;
           margin-left:0px;
      }  
  </style>
  <head>   
  <body id="body">
<%--<%@include file="Web Pages/mymenu.jsp"%>--%>
<% 
int x=1;
String s1=request.getParameter("rn");
try{

    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st=con.createStatement();
   ResultSet rs=st.executeQuery("select *from student AS c INNER JOIN student_marks AS st ON c.id = st.id  ");
  
    %><center><div id="div1"><table cellpadding="12" >
      <tr>
     <th>Name</th> <th>RollNo</th> <th>Maths</th> <th>Physics</th> <th>Chemistry</th> <th>Java</th>        
     </tr>   
     <%
  while(rs.next())
        { %>
       <tr>
          <td><input type="text" value="<%=rs.getString(2)%>"class="text"></td>
        
          <td><input type="text" value="<%= rs.getString(1)%>"class="text"></td>
         
          <td><input type="text" value="<%=rs.getString(10)%>"class="text"></td>
         
          <td><input type="text" value="<%=rs.getString(11)%>"class="text"></td>
         
          <td><input type="text" value="<%=rs.getString(12) %>"class="text"></td>
          
          <td><input type="text" value="<%=rs.getString(13) %>"class="text"></td>
         
       </tr>
           <% x++;} 
 
    con.close();
   }
   catch(Exception e)
   {
    out.println(e);
   }
%>
</table>
<center>
</body>
</html>