<% 
Cookie ck[]=request.getCookies();
if(ck!=null)
{
%>
<html>
<head>
<link rel="stylesheet" href="css_folder/c.css">
<style>
  #div1
  {
      margin-top:80px;
  }          
</style>
</head>
<body id="body">
<%@include file="mymenu.jsp"%>
<div id="data">
<center>
    <div id="div1">
    <form action="insertdemo.jsp">
<table cellpadding="12">
<tr>
<th>Name</th>
<th><input type="text" placeholder="Name" class="text" name="name"></th>
</tr>
<tr>
<th>Enter roll no.</th>
<th><input type="text" placeholder="Enter roll no." class="text" name="rn"></th>
</tr>
<tr>
<th>Password</th>
<th><input type="text" placeholder="Enter roll no." class="text" name="pass"></th>
</tr>
<tr>
<th>Physics</th>
<th><input type="text" placeholder="Physics" class="text" name="physics"></th>
</tr>
<tr>
<th>Maths</th>
<th><input type="text" placeholder="Maths" class="text" name="maths"></th>
</tr>
<tr>
<th>Chemestry</th>
<th><input type="text" placeholder="chemestry" class="text" name="chem"></th>
</tr>
<tr>
<th colspan="2"><input type="submit" value="Insert" class="t"></th>
</tr>
</table>
 </div>
</center>
</form>
</body>
</html>
<% }
else
{
out.println("you can not enter directly");

}
%>   