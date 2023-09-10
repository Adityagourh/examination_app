<%@page import="java.sql.*" %>
<% 
 RequestDispatcher rd;
String s1=request.getParameter("name");
String s2=request.getParameter("uname");
String s3=request.getParameter("email");
String s4=request.getParameter("phone");
String s5=request.getParameter("password");
String s6=request.getParameter("cpassword");
String s7=request.getParameter("gender");
//String s5=request.getParameter("gender");
if(s5.equals(s6))
{
  try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st=con.createStatement();
     int x =st.executeUpdate("insert into login (name,uname,email,phone,password,cpassword,gender) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
     rd=request.getRequestDispatcher("/login.jsp");
     rd.forward(request, response);
     con.close();
    }    

    catch(Exception e)
   {
    out.println(e);
   }
}
else
        {
          out.println("<h2 style='color:red'>Mismatch password re-enter</h2>");
          rd=request.getRequestDispatcher("/student_app/alumini.jsp");
          rd.include(request, response);
         }
%>