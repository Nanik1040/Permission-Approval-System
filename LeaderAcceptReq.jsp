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
 
PreparedStatement pstmt = con.prepareStatement("update Raise set LEADERSTATUS='accepted' where peid=97763 ");


int n = pstmt.executeUpdate();
response.sendRedirect("ViewPermissions.jsp");

}
catch(Exception e)
{
	System.out.println(e);
}

%>
