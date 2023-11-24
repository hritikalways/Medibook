<%@page import="java.sql.*" %>
<%
                String s1=request.getParameter("dname");
		String s2=request.getParameter("dcontact");
                String s3=request.getParameter("dcity");
		String s4=request.getParameter("dsp");
                String s5=request.getParameter("dpass");
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///medibook?useSSL=false","root","root");
			Statement st=con.createStatement();
			st.executeUpdate("insert into doctor values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
                        st.executeUpdate("create table "+s1+"(USER varchar(30),CONTACT varchar(13),PROBLEM varchar(100),TIME time(6),DATE date)");
			response.sendRedirect("login.jsp");
			con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}

%>