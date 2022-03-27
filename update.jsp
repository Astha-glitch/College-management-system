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
<%
try{
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SAKET", "845426");
    Statement st=conn.createStatement();
    String sql ="select * from student where rollno="+rollno;
    ResultSet rs= st.executeQuery(sql);
//connection = DriverManager.getConnection(connectionUrl+database, userid, password);
//statement=connection.createStatement();
//String sql ="select * from users where id="+id;
//resultSet = statement.executeQuery(sql);
 while(rs.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="update-process.jsp">
Course:<br>
<input type="text" name="course" value="<%=rs.getString("course") %>">
<br>
Branch:<br>
<input type="text" name="branch" value="<%=rs.getString("branch") %>">
<br>
Rollno:<br>
<input type="text" name="rollno" value="<%=rs.getString("rollno") %>">
<br>
Name:<br>
<input type="text" name="name" value="<%=rs.getString("name") %>">
<br><br>
<br>
FatherName:<br>
<input type="text" name="fathername" value="<%=rs.getString("fathername") %>">
<br>
<br>
Gender:<br>
<input type="text" name="gender" value="<%=rs.getString("gender") %>">
<br>
<br>
email:<br>
<input type="text" name="email" value="<%=rs.getString("email") %>">
<br>
<br>
Address:<br>
<input type="text" name="address" value="<%=rs.getString("address") %>">
<br>
<br>
password:<br>
<input type="text" name="password" value="<%=rs.getString("password") %>">
<br>
<input type="submit" value="submit">
</form>
<%
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>