<%@ page import="java.sql.*" %>
<%
String f_name=request.getParameter("f_name");
String l_name=request.getParameter("l_name");
String uname=request.getParameter("uname");
String email=request.getParameter("email");
String category=request.getParameter("category");
String startdate=request.getParameter("startdate");
String enddate=request.getParameter("enddate");
String duration=request.getParameter("duration");
String reason=request.getParameter("reason");
int peid = (int)(Math.random() * 99999 + 1);
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "manager");  
	System.out.println("Connection Established");
		PreparedStatement pstmt = con.prepareStatement("insert into Raise values(?,?,?,?,?,?,?,?,?,?)");
		pstmt.setInt(1, peid);
		pstmt.setString(2,f_name);
		pstmt.setString(3,l_name);
		pstmt.setString(4,uname);
		pstmt.setString(5,email);
		pstmt.setString(6,category);
		pstmt.setString(7,startdate);
		pstmt.setString(8,enddate);
		pstmt.setString(9,duration);
		pstmt.setString(10,reason);
		int i = pstmt.executeUpdate();

		if(i>0)
		 {
			%>
			<h3>your response has been sent</h3><br>
			<% 
		 }
		else
		 {
				%>
				<h3>your response has been not sent</h3><br>
				<% 
		 }
	}
catch(Exception e)
{
	out.println(e);
}
%>

