<%@ page import="java.sql.*" %>
<%
String uname = (String)session.getAttribute("uname");

%>
<!DOCTYPE html>
<html>
<head>
<title>led home</title>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
   text-align: center;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
  border-right:1px solid #bbb;
}

li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
 
}
</style>
</head>
<body>


<table  width="800">
<tr bgcolor="#FF6666" border=20>
<th>ID</th>
<th>F_NAME</th>
<th>L_NAME</th>
<th>UNAME</th>
<th>EMAIL</th>
<th>CATEGORY</th>
<th>STARTDATE</th>
<th>ENDDATE</th>
<th>DURATION</th>
<th>REASON</th>
<th>LEADER STATUS</th>
<th>MANAGER STATUS</th>
<th>FINAL STATUS</th>


</tr>
<%

Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Classes Loaded");  
Connection con = null;
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "manager");  
System.out.println("Connection Established");
PreparedStatement pstmt = con.prepareStatement("select *from Raise  ");
ResultSet rs = pstmt.executeQuery();
 while(rs.next())
{
%>
<tr >
<td><%=rs.getString("peid")%>
<td><%=rs.getString("f_name")%></td>
<td><%=rs.getString("l_name")%></td>
<td><%=rs.getString("uname")%></td>
<td><%=rs.getString("email")%></td>
<td><%=rs.getString("category")%></td>
<td><%=rs.getString("startdate")%></td>
<td><%=rs.getString("enddate")%></td>
<td><%=rs.getString("duration")%></td>
<td><%=rs.getString("reason") %></td>
<td><%=rs.getString("leaderstatus") %></td>
<td><%=rs.getString("mangerstatus") %></td>
<td><%=rs.getString("finalsatus") %></td>




</tr>
<%
}
%>
</table>
    </body>
</html>
