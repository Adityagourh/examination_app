<%@page import="java.sql.*" %>
<% 
RequestDispatcher rd;
String s1=request.getParameter("name");
String s2=request.getParameter("pass");
String s3=request.getParameter("rn");
String s4=request.getParameter("physics");
String s5=request.getParameter("maths");
String s6=request.getParameter("chem");
try{

    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st=con.createStatement();
     int x =st.executeUpdate("insert into login1 values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
       if(x!=0)
       {
        out.println("<center><h2>Data Inserted</h2></center>");
       rd=request.getRequestDispatcher("admin_app/insert.jsp");
       rd.forward(request, response);
       }
       else    
       {
        out.println("<center><h2>Wrong Data</h2></center>");
        rd=request.getRequestDispatcher("admin_app/insert.jsp");
        rd.include(request, response);
       }

         con.close();
      }    

    catch(Exception e)
   {
      out.println("<center><h2 style='color:red'>Use New Roll no</h2></center>");
          rd=request.getRequestDispatcher("admin_app/insert.jsp");
          rd.include(request, response); 
   }
%>