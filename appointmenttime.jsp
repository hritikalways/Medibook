<html>
       <%@include file="menu1.jsp" %>
       <% 
       String s=request.getParameter("ss");
      
       %>
<body>
<div id="mydata">
<center>
<form action="final.jsp">
<table cellpadding='12'>
<tr>
<td>Patient Name</td>
<td><input type="text" placeholder="Pateint Name" class="A" name="name"></td>
</tr>
<tr>
<td> contact</td>
<td><input type="text" placeholder="Enter contact no." class="A" name="contact"></td>
</tr>
<tr>
<td>Problem</td>
<td><input type="text" placeholder="Enter problem" class="A" name="problem"></td>
</tr>
<tr>
<td>Time</td>
<td><input type="time" placeholder="Time" class="A" name="time"></td>
</tr>
<tr>
<td>Date</td>
<td><input type="date" placeholder="Date" class="A" name="date"></td>
</tr>
<tr>
<td>Doctor</td>
<td><input type="text" value="<%=s%>" class="A" name="doctor"></td>
</tr>
<tr>
<th colspan="2"><input type="submit" class="B" value="Book"></th>
</tr>
</table>
</form>
</center>

</div>

</body>
</html>
