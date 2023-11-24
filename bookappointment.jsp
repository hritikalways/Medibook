<%@page import="java.sql.*" %>
<html>
    
        
    
     <%@include file="menu1.jsp" %>
     <body>
         <%
             
         try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///medibook?useSSL=false","root","root");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select NAME,CONTACT,CITY,SPECIALIZATION from doctor");
         %>
         <div id="mydata">
             <center>
                 <form action="appointmenttime.jsp">
                 <table cellpadding="12">
                     <tr>
                         <td>Doctor Name</td>
                         <td>Contact </td>
                         <td>City</td>
                         <td>Specialization</td>
                         <td>Select Doctor</td>
                      
                    </tr>     
        <%
        while(rs.next())
        {
        
        %>   
        <tr>            
                        <td><%=rs.getString(1)%> </td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><input type="checkbox"  name="ss" value="<%=rs.getString(1)%>"></td>
                        
        </tr>
       
        <%
            }
            con.close();
        }
        catch(Exception e)
    {
        out.println(e);
    }
        %> <tr>
       
            <td><input type="submit"></td>
            
        </tr>
                 </table>
                 </form>
             </center>
                 </<body>
                     </html>
