<%
String f_name = (String)session.getAttribute("f_name");
String l_name = (String)session.getAttribute("l_name");
String uname= (String)session.getAttribute("uname");
String email = (String)session.getAttribute("email");
String pwd = (String)session.getAttribute("pwd");
if(f_name==null || l_name==null || uname==null || email==null || pwd==null)
{
    response.sendRedirect("EmpLogin.htm");
}
%>
<!DOCTYPE html>
<html>
<head>
<title>emp home</title>
<style>
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

<ul>
  <li><a href="EmpHome.jsp">Home</a>
  </li>
<li class="dropdown">

  </li>
<li><a href="ReqPermission.jsp">Request Permission</a>
  </li>
<li class="dropdown">
    <a href="PermissionStatus.jsp? uname=<%=(String)session.getAttribute("uname")%>"> <button type="button" class="dropbtn">Permission Status</button></a>
    <div class="dropdown-content">
     
    </div>
    
  

  
</ul><br><br>
<h3 align=center>WELCOME&nbsp;&nbsp;<%=uname%></h3>
</body>
</html>
