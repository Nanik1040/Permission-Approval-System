<%
String f_name = (String)session.getAttribute("f_name");
String l_name = (String)session.getAttribute("l_name");
String uname= (String)session.getAttribute("uname");
String email = (String)session.getAttribute("email");
String pwd = (String)session.getAttribute("pwd");
if(f_name==null || l_name==null || uname==null || email==null || pwd==null)
{
    response.sendRedirect("EmpHome.jsp");
}
%>
<html>
    <head>
        <title>
          RAISE PERMISSION
        </title>
        <style>
body {
  background-image: url("");
 background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
    </head>
    <body >
        <form method="post" action="RaisePermission.jsp" >
            <table align="center" style="height:150px;color:red">
           
                <tr>
                    <th colspan="2" >Raise Permission Form</th>
                   
                </tr><br><br>
               
                <tr><td> Username</td>
                <td><input  name=uname value="<%=uname%>"   readonly></td>
                </tr>
                <tr><td> First Name</td>
                <td><input name=f_name   value="<%=f_name%>"  readonly></td>
                </tr>
                <tr><td> Last Name</td>
                <td><input name=l_name   value="<%=l_name%>"  readonly></td>
                </tr>
                <tr><td> email</td>
                <td><input name=email  value="<%=email%>"  readonly></td>
                </tr>
               
                <tr>
                <td>Category</td>
                <td><input type="text" placeholder="Enter Category" name="category" required></td>
                       </tr>
                       
                       <tr><td> Startdate</td>
                <td><input type="date"  name="startdate" required></td>
                </tr>
               
                <tr><td> Enddate</td>
                <td><input type="date"  name="enddate" required></td>
                </tr>
               
                <tr><td> Duration</td>
                <td><input type="number" placeholder="How many days" name="duration" required></td>
                </tr>
                       <tr>
                           <td>
                               Reason
                           </td>
                           <td><input type="text" placeholder="purpose of permission"  name="reason" required> </td>
                       </tr>
 <td align="center"><input type="submit" value="Submit"></td>
                    <td align="center"><input type="reset" value="Clear"></td>
                </tr>
            </table>

      </form>
    </body>
</html>
