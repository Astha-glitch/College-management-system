<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title> Admin Validation </title>
</head>
<body>

<%
String un=request.getParameter("username");
String pw=request.getParameter("password");

try{
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SAKET", "845426");
    PreparedStatement ps=conn.prepareStatement("select Admin_id,Password from Admin where Admin_id=?");
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
    response.sendRedirect("adminHome.jsp");
    else
    {
        out.println("Incorrect Username or Password!<br>");
        //out.println("<a href='LoginStudent.html'>Go Back</a>");
        response.sendRedirect("errorAdminLogin.html");
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
