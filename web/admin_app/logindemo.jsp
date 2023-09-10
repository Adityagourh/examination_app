<%@page import="java.sql.*" %>

<html>
<body>    
<% 
String s1=request.getParameter("un");
String s2=request.getParameter("up");
String s3=request.getParameter("x");
RequestDispatcher rd; 

try{

    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select *from login where name='"+s1+"'AND password='"+s2+"'");
  if(rs.next())
        {
          Cookie ck=new Cookie("un","s1");
         ck.setMaxAge(60*2);
         response.addCookie(ck);
          rd=request.getRequestDispatcher("/menu1.jsp");
          rd.forward(request, response); 
        } 
        else
        {
          out.println("<h2 style='color:red'>Invalid Name&Password</h2>");
          rd=request.getRequestDispatcher("/login.jsp");
          rd.include(request, response);
         }
    con.close();
   }
   catch(Exception e)
   {
    out.println(e);
   }
%>
</body>
</html>