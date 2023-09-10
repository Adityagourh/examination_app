<html>
<head>
<style>
    #p{
    
     // margin-top:220px;
      background-image:url("css_folder/login14.jpg");
		background-size:100%,100%;

     // margin-right:10px;
     }
     #body{
         background-image:url("css_folder/login14.jpg");
         background-size:100%,100%;
         // background-repeat:no-repeat;
     }
	 #t1{
	  	border-radius:20px;
	      margin-top:100px;
              margin-left:450px;
              background-color: aqua;
              background-color: rgba(0, 0, 0, .25);

//color: white;

//padding: 100px;
		 //background-image:url("bg1.jpg");
		background-color:white;
               // background-opacity:0.0;

		background-size:100%;
		 // background-repeat:no-repeat;
   	 
	 }
	 .t
      {
       font-size:15px;
       font-family:Britannic Bold;
       width:250px;
       height:35px;
       border-radius:30px;	
      }
	 #button
	 {
        width:240px;
	height:40px;
	background:linear-gradient(to right,rgb(36,44,59),rgb(1,1,1));
	color:white;
	}
</style>
</head>
<body id="body">
<div>
  
<form action="admin_app/loginvalid.jsp" method="post">
 <table cellpadding="12" id="t1">
 <tr>
<th><img src="css_folder/loginlogo.jpg" alt="Paris" style="margin-left:auto;margin-right:auto;"></th>
 </tr><tr><td><input type="text" name="un" placeholder="Enter Name" class="t"></td>
 </tr><tr> 
 <td><input type="password" name="up" placeholder="Password" class="t"></td>
 </tr>
 <tr> 
 <th colspan="2"><input type="submit"value="Login" class="t" id="button"></th>
 </tr>
  <tr><th style="color:rgba(51,159,252,1.0);">Don't have any account?<a href="student_app/alumini.jsp">Click here..<a></th>  
  </tr> 
 </table>
</form>
</div>
</body>
</html>