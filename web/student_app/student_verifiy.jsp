<%@page import="java.sql.*" %>
<% 
RequestDispatcher rd;
String s1=request.getParameter("un");
String s2=request.getParameter("up");
try{

      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select *from student where uname='"+s1+"'AND password='"+s2+"'");
      if(rs.next())
      {
         Cookie name=new Cookie("name",s1);
      
         name.setMaxAge(60*2);
         response.addCookie(name);
         rd=request.getRequestDispatcher("/exam.jsp");
         rd.forward(request, response);
      }
         else
        {
          %>
          <table><td>
          <%
          out.println("<h3 style='color:red'>Mismatch User name and Password</h3>");
          rd=request.getRequestDispatcher("/student.jsp");
          rd.include(request, response);
          %>
          </td></table>
          
          <%
        }
      con.close();
     }    
     catch(Exception e)
     {
     out.println(e);
     }
 
%>