<% 
Cookie ck[]=request.getCookies();
if(ck!=null)
{
%>
<html>
<head>
<link rel="stylesheet" href="c.css">
<style>
</style>
</head>
<body id="body">
<%@include file="mymenu.jsp"%>
<div id="data">
<center>
    <form action="admin_app/showdemo.jsp">
<table cellpadding="12">

<tr>
<th>Enter roll no.</th>
<th><input type="text" placeholder="Enter roll no." class="text" name="rn"></th>
</tr>
<tr>
<th colspan="3"><input type="submit" value="Show" class="t"></th>
</tr>


</table>
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