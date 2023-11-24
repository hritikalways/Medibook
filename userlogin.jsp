<html>
    <%@include file="menu1.jsp" %>
 <body>
       
<div id="mydata">
<center>    <center> <img src="c.jpg" alt="Medibook" width="100" height="100">
<h1>User Login</h1></center>
<center>
<%
String s=request.getParameter("s1");
if(s!=null)
{
%>
<%=s%>
<%
    }
%>
<form action="userlogin2.jsp">
<table cellpadding='12'>
<tr>
<td>Enter Name</td>
<td><input type="text" placeholder="Enter Name" class="A" name="un"></td>
</tr>
<tr>
<td>Enter Password</td>
<td><input type="password" placeholder="Enter Password" class="A" name="up"></td>
</tr>
<tr>
<th colspan="2"><input type="submit" class="B" value="Login"></th>
</tr>
</table>
</form>
</center>

</div>

</body>
</html>