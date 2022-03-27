<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title> Attendance </title>
</head>
<body>

<%
String rollno=request.getParameter("rollno");

try{
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SAKET", "845426");
    PreparedStatement ps=conn.prepareStatement("update attendance set atten=(atten+1) where rollno=?");
    //ps.setInt(1,1);
    ps.setString(1,rollno);
    ps.executeUpdate();
    %>
    Database successfully updated! <br>
    <%
    if(ps.executeUpdate()>=1){
        out.println("Record updated successfully");
        response.sendRedirect("Attendance.html");

    }
    //out.print("Login Successfull!");
    //redirecting
    else
    {
        out.println("Incorrect RollNo !<br>");
        out.println("<a href='FacultyHome.jsp'>Go Back</a>");
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
