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
    PreparedStatement ps=conn.prepareStatement("select atten from attendance where rollno=?");
    ps.setString(1,rollno);
    ResultSet rs=ps.executeQuery();
    int userData;
    while(rs.next())
    {
        userData=rs.getInt(1);
        out.println("Your total attendance is:"+ userData); %>
        <br>
        <br>
        <%
        out.println("<a href='StudentActivity.html'>Go Back</a>");
    }
}
catch(Exception e)
{
    out.print("Database Error!");
}
%>
</Body>
</html>
