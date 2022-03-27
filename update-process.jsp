<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/test";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String rollno=request.getParameter("rollno");
String name=request.getParameter("name");
String fathername=request.getParameter("fathername");
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String address=request.getParameter("address");
String password=request.getParameter("password");
Class.forName("oracle.jdbc.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SAKET", "845426");
String sql="Update student set course=?,branch=?,rollno=?,name=?,fathername=?,gender=?,email=?,address=?,password=? where rollno="+rollno;
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1,course);
ps.setString(2,branch);
ps.setString(3, rollno);
ps.setString(4, name);
ps.setString(5, fathername);
ps.setString(6, gender);
ps.setString(7, email);
ps.setString(8,address);
ps.setString(9, password);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
out.println(sql);
}
}
%>