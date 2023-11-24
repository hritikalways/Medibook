<html>
    <%@include file="menu1.jsp" %>
        
 <body>
       
<div id="mydata">
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
<img src="c.jpg" alt="Medibook" width="100" height="100">
<h1>Doctor Login</h1>
<form action="login2.jsp">
<table cellpadding='12'>
<tr>
<td>Enter Name</td>
<td><input type="text" placeholder="Enter Name" class="A" name="un" id="t1"></td>
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