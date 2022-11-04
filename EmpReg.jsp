<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
  import="java.sql.*" %>

<%
String f_name=request.getParameter("f_name");
String l_name=request.getParameter("l_name");
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver Classes Loaded");  
	Connection con = null;
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "manager");  
	System.out.println("Connection Established");

PreparedStatement pstmt=con.prepareStatement("insert into Employee values(?,?,?,?,?,?)");

pstmt.setString(1,f_name);
pstmt.setString(2,l_name);
pstmt.setString(3,uname);
pstmt.setString(4,pwd);
pstmt.setString(5,email);
pstmt.setString(6,contact);
pstmt.executeUpdate();
System.out.println("Successfully Registered !!!!!");
}
catch (Exception e)
{
System.out.println(e);
}
%>
