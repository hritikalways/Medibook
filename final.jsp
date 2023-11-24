<%@page import="java.sql.*" %>
<%
                
                String s1=request.getParameter("name");
		String s2=request.getParameter("contact");
                String s3=request.getParameter("problem");
		String s4=request.getParameter("time");
                String s5=request.getParameter("date");
                String s6=request.getParameter("doctor");
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///medibook?useSSL=false","root","root");
			Statement st=con.createStatement();
			st.executeUpdate("insert into "+s6+" values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
                        response.sendRedirect("login.jsp");
			con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}

%>