<%@page import="java.sql.*" %>
<html>
<%@include file="menu1.jsp" %>
<body>
         
<div id="mydata">
<center>
<form action="search.jsp">
<table cellpadding='12'>
<tr>
<td>Enter City</td>
<td><input type="text" placeholder="Enter City" class="A" name="u1"></td>
</tr>
<tr>
<th colspan="2"><input type="submit" name="b1" class="B" value="Search"></th>
</tr>
</table>
</form>
</center>
</div>
<%
String s1=request.getParameter("b1");
if(s1!=null)
{
String s11=request.getParameter("u1");
try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///hritik","root","root");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from insmarks where urno='"+s11+"';");
			if(rs.next())
			{
%>
<center>
<table cellpadding='12'>
<tr>
<td>Roll no.</td>
<td><%=rs.getString(1)%></td>
</tr>
<tr>
<td>Name</td>
<td><%=rs.getString(2)%></td>
</tr>
<tr>
<td>Physics</td>
<td><%=rs.getString(3)%></td>
</tr>
<tr>
<td>Chemistry</td>
<td><%=rs.getString(4)%></td>
</tr>
<tr>
<td>Maths</td>
<td><%=rs.getString(5)%></td>
</tr>
</table>
</center>
<%
    }
else
{
out.println("<center><h1>No record found");
}
}
catch(Exception e1)
{
out.println(e1);
}}
%>
