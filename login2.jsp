<%@page import="java.sql.*" %>
<%
                String s1=request.getParameter("un");
		String s2=request.getParameter("up");
                

		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///medibook?useSSL=false","root","root");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from doctor where NAME='"+s1+"' AND PASSWORD='"+s2+"'");
			if(rs.next())
			{
//                             
				%> <%@page import="java.sql.*" %>
<html>
    
     <%@include file="menu1.jsp" %>
          <body>
         <%
             String s=request.getParameter("doctorname");
         try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con1=DriverManager.getConnection("jdbc:mysql:///medibook?useSSL=false","root","root");
			Statement st1=con1.createStatement();
			ResultSet rs1=st1.executeQuery("select * from "+s1+"");
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
        while(rs1.next())
        {
        
        %>   
        <tr>
                        <td><%=rs1.getString(1)%></td>
                        <td><%=rs1.getString(2)%></td>
                        <td><%=rs1.getString(3)%></td>
                        <td><%=rs1.getString(4)%></td>
                        <td><%=rs1.getString(5)%></td>
        </tr>
        <%
            }
            con1.close();
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
<%
			}
			else
			{
			//out.println("Invalid user name and Password");
                        response.sendRedirect("login.jsp?s1=invalid username and password");
				
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}

%>