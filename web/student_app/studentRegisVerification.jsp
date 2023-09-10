<%@page import="java.sql.*" %>
<% 
 RequestDispatcher rd;
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String password=request.getParameter("password");
String cpassword= request.getParameter("cpassword");
String gender = request.getParameter("gender");
//String s5=request.getParameter("gender");
  try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st=con.createStatement();
     int x =st.executeUpdate("insert into login (name,email,phone,password,cpassword,gender) values('"+name+"','"+email+"','"+phone+"','"+password+"','"+cpassword+"','"+gender+"')");
     rd=request.getRequestDispatcher("/login.jsp");
     rd.forward(request, response);
     con.close();
    }    

   catch(Exception e)
   {
    out.println(e);
   }
}
%>