<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title> Student Validation </title>
</head>
<body>

<%
String un=request.getParameter("username");
String pw=request.getParameter("pass");

try{
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SAKET", "845426");
    PreparedStatement ps=conn.prepareStatement("select rollno,password from student where rollno=?");
    ps.setString(1,un);
    ResultSet rs=ps.executeQuery();
    boolean flag=false;
    while(rs.next())
    {
        if(un.equals(rs.getString(1)) && pw.equals(rs.getString(2)))
        {
            flag=true;
        }
    }
    if(flag)
    //out.print("Login Successfull!");
    //redirecting
    response.sendRedirect("StudentActivity.html");
    else
    {
        out.println("Incorrect Username or Password!<br>");
        out.println("<a href='LoginStudent.html'>Go Back</a>");
    }
    ps.close();
    conn.close();
}
catch(Exception e)
{
    out.print("Database Error!");
}
%>
</Body>
</html>
