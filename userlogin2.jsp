<%@page import="java.sql.*" %>
<%
                String s1=request.getParameter("un");
		String s2=request.getParameter("up");
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///medibook?useSSL=false","root","root");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from user where NAME='"+s1+"' AND PASSWORD='"+s2+"';");
			if(rs.next())
			{
//                             
				response.sendRedirect("bookappointment.jsp");
			}
			else
			{
			//out.println("Invalid user name and Password");
                        response.sendRedirect("userlogin.jsp?s1=invalid username and password");
				
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}

%>