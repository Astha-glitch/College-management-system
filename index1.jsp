<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String rollno = request.getParameter("rollno");
try {
Class.forName("oracle.jdbc.OracleDriver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
%>
<html>
<body>
<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr> 
<td>Course</td> 
<td>Branch</td> 
<td>RollNo</td> 
<td>Name</td>
<td>FatherName</td>
<td>Gender</td>
<td>Email</td>
<td>Address</td>
<td>Password</td> 
</tr> 
<%
try{
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SAKET", "845426");
    Statement st=conn.createStatement();
    String sql ="select * from student";
    ResultSet rs= st.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><input type="text" value="<%=rs.getString("COURSE") %>"></td> 
    <td><input type="text" value="<%=rs.getString("BRANCH") %>"></td> 
    <td><input type="text" value="<%=rs.getString("ROLLNO") %>"></td> 
    <td><input type="text" value="<%=rs.getString("NAME") %>"></td> 
    <td><input type="text" value="<%=rs.getString("FATHERNAME") %>"></td> 
    <td><input type="text" value="<%=rs.getString("GENDER") %>"></td> 
    <td><input type="text" value="<%=rs.getString("EMAIL") %>"></td> 
    <td><input type="text" value="<%=rs.getString("ADDRESS") %>"></td> 
    <td><input type="text" value="<%=rs.getString("PASSWORD") %>"></td>
    <td><a href="update.jsp?rollno=<%=rs.getString("rollno")%>">update</a></td>
</tr>
<%
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>