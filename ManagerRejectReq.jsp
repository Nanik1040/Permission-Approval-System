<%@ page import="java.sql.*" %>
<%
String uname = (String)session.getAttribute("uname");
String pwd = (String)session.getAttribute("pwd");
if(uname==null || pwd==null)
{
    response.sendRedirect("LeaderLogin.htm");
}
%>
<%
String peid = request.getParameter("peid");



%>
<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Classes Loaded");  
Connection con = null;
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "manager");  
System.out.println("Connection Established");
 
PreparedStatement pstmt = con.prepareStatement("update Raise set MANGERSTATUS='rejected',FINALSATUS='rejected' where peid='?'");


int n = pstmt.executeUpdate();
response.sendRedirect("ViewPermissions1.jsp");

}
catch(Exception e)
{
	System.out.println(e);
}

%>
