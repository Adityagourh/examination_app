<html>
<head>
    <style>
   #table
{
text-align:left;
font-size:15px;
font-weight:900;
margin-left:400px;
border:solid;
border-radius:30px;
}
#button
{
border-radius:30px;
width:200px;
height:40px;
background:linear-gradient(to right,rgb(221,22,98),rgb(255,255,255));	
}
#tab
{
text-align:left;
font-weight:900;
margin-left:550px;
margin-top:50px;
}
name1
{
 color:red;
}
#body{
         background-image:url("login14.jpg");
         // background-repeat:no-repeat;
     
    </style>
<script type="text/javascript">
function demo()
{
var re1=/^[A-Za-z]/;
var re2=/\w{3,10}/;
var re3=/^\w{3,30}\@(gmail|yahoo)\.(in|com)$/;
var re4=/^[6-9]\d{9}$/; 
var re5=/^[A-Z]{1}\@\w{1,5}$/;

x1=document.getElementById('name').value;
x2=document.getElementById('name1').value;
x3=document.getElementById('email').value;
x4=document.getElementById('phone').value;
x5=document.getElementById('pass').value;
if(x1.length>3)
{
   if(re2.test(x2))
   {
       
       if(re3.test(x3))
        {  
             if(re5.test(x5))
             {
              form.submit();         
	     }
             else
             {
             document.getElementById('nam5').innerHTML="Invalid Password";
             } 
           }
       else
       {
       document.getElementById('nam2').innerHTML="Invalid email";
       }
   }
   else
   {
   document.getElementById('nam1').innerHTML="Invalid Username";
   }
}
else
{
document.getElementById('nam').innerHTML="Invalid Name";
}

}


</script>
</head>
<body id="body">
  
<h2 id="tab">Registration Form</h2>
<form action="alumini_verify.jsp" name="form" method="post">
<table id="table" cellpadding="15">
<tr>
<div id="div1">
<td>Full Name<br><input type="text" placeholder="6-20 char" name="name" class="text" id="name"><p style="color:red;"id="nam"></p></td>
<td>Username<br><input type="text" placeholder="@abc1" name="uname" class="text" id="name1"><p style="color:red;"id="nam1"></p></td>
</tr>

<!-- email and phone -->
<tr>
<div id="div2">
<td>Email<br><input type="text" placeholder="abhi@gmail.com" name="email" class="text" id="email"><p style="color:red;"id="nam2"></p></td>
<td>Phone Number<br><input type="text" placeholder="10 digit no." name="phone" class="text" id="phone"><p style="color:red;"id="nam4"></p></td>
</div>
</tr>

<!-- password fields -->
<tr>
<div id="div3">
<td>Password<br><input type="text" placeholder="A@123" name="password" class="text" id="pass"><p style="color:red;"id="nam5"></p></td>
<td>Confirm Password<br><input type="password" placeholder="mixed char" name="cpassword" class="text" id="cpass"></td>
</div>
</tr>

<!-- gender -->
<tr>
<div id="div4">
<td><input type="radio" id="x" value="Male" name="gender">Male<input type="radio" id="x" value="Female" name="gender">Female
</div>
</tr>
<tr>
<th colspan="12"><center><input type="button" value="Register" id="button" onclick="demo()"></center></th>
</tr>
<tr><th style="color:rgba(51,159,252,1.0);">Have any account?<a href="login.jsp">Sign In</a></th>  
  </tr> 
</table>
</form>
<footer>
		<p>&copy; 2023 IPS Academy All rights reserved.</p>
	</footer>
</body>

</html>