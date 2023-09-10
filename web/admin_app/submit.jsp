<%@page import="java.sql.*"%>
<% 
   RequestDispatcher rd;
   Cookie ck[]=request.getCookies();
   String s1=null;   
   String s2=null;   
   String s3=" ";
   if(ck!=null)
   {
   for(int i=0;i<ck.length;i++)
   {
     Cookie cookie = ck[i];
     if((cookie.getName()).compareTo("name") == 0)
    {
        s1=cookie.getValue();  
    }
     if((cookie.getName()).compareTo("subject") == 0)
    {
        s2=cookie.getValue();  
    }
   }
   //fetch id
   try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select *from student where uname='"+s1+"'");
    if(rs.next())
    {
     s3=rs.getString(1);
    }
    con.close();
   }
   catch(Exception e){}
    
   
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st=con.createStatement();
    int x=st.executeUpdate(" UPDATE student_marks SET "+s2+"='30' WHERE id='1' ");
    if(x!=0)
    {
         rd=request.getRequestDispatcher("/exam.jsp");
         rd.forward(request, response); 
    }
    con.close();
    }           
    catch(Exception e){
    out.println(e);
    }   
 }

%> 