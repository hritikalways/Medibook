<%@page import="java.sql.*" %>
<html>
    
     <%@include file="menu2.jsp" %>
          <body>
         <%
             String s=request.getParameter("doctorname");
         try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///medibook?useSSL=false","root","root");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from "+s+"");
         %>
         <div id="mydata">
             <center>
                 <table cellpadding="12">
                     <tr>
                         <td>Patient Name</td>
                         <td>Contact</td>
                         <td>Problem</td>
                         <td>Time</td>
                         <td>Date</td>
                    </tr>     
        <%
        while(rs.next())
        {
        
        %>   
        <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
        </tr>
        <%
            }
            con.close();
        }
        catch(Exception e)
    {
        out.println(e);
    }
        %>
                 </table>
             </center>
                 </<body>
                     </html>
