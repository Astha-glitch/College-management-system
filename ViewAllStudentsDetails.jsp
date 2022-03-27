<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head></head>
	
	<body>
		<h1>Student Data</h1>
		<table border="1">
			<tr>
				<th>Roll_No</th>
				<th>Name</th>
				<th>Address</th>
				<th>Email Id</th>
				<th>DOB</th>
                <th>Mobile</th>
                <th>Course</th>
                <th>Semester</th>
                <th>Password</th>
			</tr>	
			<center>
				<%
					try{
						Class.forName("oracle.jdbc.OracleDriver");			
						Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SAKET", "845426");
						
						Statement st=con.createStatement();
						
						
						ResultSet rs=st.executeQuery("select * from student");
						
						while(rs.next()){
							%>
							<tr>
								<td><%=rs.getString(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=rs.getString(4) %></td>
								<td><%=rs.getString(5) %></td>
                                <td><%=rs.getString(6) %></td>
                                <td><%=rs.getString(7) %></td>
                                <td><%=rs.getString(8) %></td>
                                <td><%=rs.getString(9) %></td>
							</tr>
						<%  }
						
						
					}catch(Exception e){
						out.println(e);
					}
			
			
				%>
				</table>
			</center>
			
			
			
            <a href="AdminActivity.html" style="text-align:center">Go Back</a>
	

	</body>

</html>