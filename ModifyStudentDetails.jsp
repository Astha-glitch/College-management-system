<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>


<!DOCTYPE html> 
<html> 
<head> 
<title>Modify Details</title> 
</head> 
<body> 
</body> 
<form method="post"> 
 
<table border="7"> 
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
<td colspan="2" align="center">ACTION</td> 
</tr> 
 
 
<% 
try 
{ 
Class.forName("oracle.jdbc.OracleDriver");			
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SAKET", "845426");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from student");
						
while(rs.next()) 
{ 
 
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
    <td><input type="button" name="UPDATE" value="UPDATE" onclick=" 
    <%  
    String qmod="update student set COURSE=?,BRANCH=?,ROLLNO=?,NAME=?,FATHERNAME=?,GENDER=?,EMAIL=?,ADDRESS=?,PASSWORD=? where ROLLNO=? "; 
    PreparedStatement pstmt=con.prepareStatement(qmod); 
    String one=request.getParameter("COURSE"); 
    String two=request.getParameter("BRANCH"); 
    String three=request.getParameter("ROLLNO"); 
    String four=request.getParameter("NAME"); 
    String five=request.getParameter("FATHERNAME"); 
    String six=request.getParameter("GENDER"); 
    String seven=request.getParameter("EMAIL"); 
    String eight=request.getParameter("ADDRESS"); 
    String nine=request.getParameter("PASSWORD"); 
    //String ten=request.getParameter("ROLLNO"); 
    pstmt.setString(1,one); 
    pstmt.setString(2,two); 
    pstmt.setString(3,three);
    pstmt.setString(4,four);
    pstmt.setString(5,five);
    pstmt.setString(6,six);
    pstmt.setString(7,seven);
    pstmt.setString(8,eight);
    pstmt.setString(9,nine);
    pstmt.setString(10,three); 
    pstmt.executeUpdate();  
    %>"></td> 
    <td> <input type="button" name="DELETE" value="DELETE"></td> 
    </tr> 
        <% 
 
} 
%> 
    </table> 
    <% 
    rs.close(); 
    st.close(); 
    con.close(); 
    } 
    catch(Exception e) 
    { 
        e.printStackTrace(); 
        } 
 
 
 
 
 
 
%> 
 
</form> 
</html> 