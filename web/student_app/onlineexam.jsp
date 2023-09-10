<%@page import="java.sql.*"%>
<% 
    RequestDispatcher rd;
   Cookie ck[]=request.getCookies();
   String s1=request.getParameter("optionList");
   String s2=null;
   
   //Create a new subject cookie
     Cookie subject=new Cookie("subject",s1);
     subject.setMaxAge(60*2);
     response.addCookie(subject);
       
   if(ck!=null)
   {
   for(int i=0;i<ck.length;i++)
   {
     Cookie cookie = ck[i];
     if((cookie.getName()).compareTo("name") == 0)
    {
        s2=cookie.getValue();  
    }
   }
    
    int x=0;
String s10="";
String s11="";
        String s12="";
        String s13="";
        String s14="";
        String s15="";
%>  

<html>
<head><title>Exam</title><link rel="stylesheet" href="c1.css">
<link rel="stylesheet" href="c2.css">


<style>
.button
{
  border: 2px solid black;
            background-color: khaki;
            height: 500px;
			<!-- weight:100px; -->
}

.button1
{
    position:relative;
    top:10px;
    background-color: white;
 }



#prev{
background-color:ggba(202,222,239,0.0);
weight:90px;
height:40px;
position:absolute;
top:160px;
left:10px;
font-size:30px;
border:2px solid black; 
border-radius:8px;

}
 
#next
{
/*background-color:ggba(202,222,239,0.0);*/
 <!-- background-color:rgba(202,222,239,0.0); -->
 height:40px;
 position:absolute;
 top:160px;
 right:10px;
 font-size:30px;
 border:2px solid black; 
 border-radius:8px;

} 


/*<!-- button hover -->*/
#next:hover{
background-color:rgba(112,123,133,1.0);  
}

#prev:hover{
background-color:rgba(112,123,133,1.0);  
}

#question
{
  position:relative;
  background-color:white;
  height:400px;
  width:1030px; 
   top:50px;
  left:80px;
  right:90px;
  }
  
  
  <!-- question ke lie -->
  .p1
  {
   position:relative;
   top:50px;
   left:30px;
   font-size:90px;
  }
  
  
  .one{
      position:relative;
      top:50px;
      left:100px;
      color:black;
  }
  
  
  #submit
  {
      background-color:rgba(87,65,234,0.1);
      position:absolute;
      bottom:5px;
      right:10px;
      width:70px;
      height:40px;
      border:2.5px solid white; 
      border-radius:8px;
      font-size:15px;
  }
  
  #submit:hover{
background-color:rgba(87,65,234,1.0);  
}

  
    /* This is head part*/
   .sticky {
        background-color:rgba(186,167,239,1.0);
        color:black;
        position:fixed;
	top:0;
	left:0;
	width:100%;
        padding-top:0;
        padding-bottom:0;      
    }

	 
	  .time1
	 {
	Container-height: 100vh;
    position:fixed;
	top:0;
	left:0;
	width:100%;
        top:4px;
        left:1000px;
	  }
    .time2
      {
	Container-height: 100vh;
        position:fixed;
	top:0;
	left:0;
	width:100%;
        top:4px;
        left:830px;
      }  
   
</style>

<script>
    var x=0;
 function prev()
{
    
    <%
    
  try{
      x--;
    if(x<=0)x=1;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con2=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st2=con2.createStatement();
    ResultSet rs2=st2.executeQuery("select * from "+s1+" where id='"+x+"' ");
    if(rs2.next())
    {
          s10=rs2.getString(1);
      s11=rs2.getString(2);
       s12=rs2.getString(3);
      s13=rs2.getString(4);
      s14=rs2.getString(5);
      s15=rs2.getString(6);
     
      %>
      document.getElementById("demo").innerHTML="<%=s10%>";
      document.getElementById("demo1").innerHTML="<%=s11%>";
      document.getElementById("demo2").innerHTML="<%=s12%>";
      document.getElementById("demo3").innerHTML="<%=s13%>";
      document.getElementById("demo4").innerHTML="<%=s14%>";
      document.getElementById("demo5").innerHTML="<%=s15%>";
     
      <%
    }
    con2.close();
  }
  catch(Exception e2){out.println(e2);}
   %>
}

function next()
{
    <%  
       
  
    try{
                x++;
  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con1=DriverManager.getConnection("jdbc:mysql:///demo5?useSSL=false","root","root");
    Statement st1=con1.createStatement();
    ResultSet rs1=st1.executeQuery("select * from "+s1+" where id='"+x+"' ");
    if(rs1.next())
    {
         s10=rs1.getString(1);
      s11=rs1.getString(2);
       s12=rs1.getString(3);
      s13=rs1.getString(4);
      s14=rs1.getString(5);
      s15=rs1.getString(6);
     
      %>
     document.getElementById("demo").innerHTML="<%=s10%>";  
      document.getElementById("demo1").innerHTML="<%=s11%>";
      document.getElementById("demo2").innerHTML="<%=s12%>";
      document.getElementById("demo3").innerHTML="<%=s13%>";
      document.getElementById("demo4").innerHTML="<%=s14%>";
      document.getElementById("demo5").innerHTML="<%=s15%>";
     
      <%
    }
    con1.close();
  }
  catch(Exception e1){out.println(e1);}
   %>
}


</script>

</head>
<body id="body" onLoad="startTimer();">
    
    
    <div class="sticky">
      <h1 class="time2">Time Left :</h1>
      <h1 class="time1" id="timer">10:00</h1>
    </div>
 
<script>
var minutes = 10;
var seconds = 0;

function startTimer() {
  var countdownTimer = setInterval(function(){
    if (seconds == 0) 
	{
      if (minutes == 0)
	  {
        clearInterval(countdownTimer);
        alert("Time's up!");
      } 
	  else
	  {
        minutes--;
        seconds = 59;
      }
    }
	else 
	{
      seconds--;
    }
    document.getElementById("timer").innerHTML = (minutes < 10 ? "0" : "") + minutes + ":" + (seconds < 10 ? "0" : "") + seconds;
  }, 1000);
}
</script>

<!--This is heading side-->
<h1>Online Examination</h1> 
		
   <div class="buton1">
   <!--This is question section-->
    <div class="button">
      <div id="question">
      <table  class="one">
          <tr></tr>
       <tr>
            <td id="demo" name="un">1</td>
      <td  id="demo1">Que</td>
      </tr>
      <tr>
      <td>
      <input type="radio" value="a" name="choice">
      </td>
      <td  id="demo2">a</td>
      </tr>
      <tr>
      <td>
      <input type="radio" value="a" name="choice">
      </td>
      <td  id="demo3">b</td>
      </tr>
      <tr>
      <td>
      <input type="radio" value="a" name="choice">
      </td>
      <td  id="demo4">c</td>
      </tr>
      <tr>
      <td>
      <input type="radio" value="a" name="choice">
      </td>
      <td  id="demo5">d</td>
      </tr>
      </table> 
       <input type="button" value="<" onclick="prev()" id="prev"> 
       <input type="button" value=">" onclick="next()" id="next">
      </form>
       <form action="submit.jsp" method="post">
        <input type="submit" value="submit" id="submit">  
       </form>
      </div>
       
   </div>    
  </div>
		
   <div>
     <h2>Results</h2>
     <p>Your exam results will be displayed here.</p>
   </div>
   <footer>
      <p>&copy; 2023 Online Examination. All rights reserved.</p>
   </footer>
</body>
</html>
  
</body>
</html>
<%
 
     
}//ck!=null
else
{
    rd=request.getRequestDispatcher("/exam.jsp");
    
    rd.include(request, response);
}
%> 