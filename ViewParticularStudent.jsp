<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head></head>
	
	<body>
		<h1>Student Data Data</h1>
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
                String name=request.getParameter("name");
                String sem=request.getParameter("sem");
					try{
						Class.forName("oracle.jdbc.OracleDriver");			
						Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SAKET", "845426");
						
						//Statement st=conn.createStatement();
						
						PreparedStatement ps=conn.prepareStatement("select * from student where student_name=? AND semester=?");
                        
                        ps.setString(1,name);
                        ps.setString(2,sem);
						ResultSet rs=ps.executeQuery();
                        boolean flag=false;
						
						while(rs.next()){
							%>
							<tr>
								<td><%=rs.getString(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=rs.getString(4) %></td>
								<td><%=rs.getString(5) %></td>
                                <td><%=rs.getString(1) %></td>
                                <td><%=rs.getString(1) %></td>
                                <td><%=rs.getString(1) %></td>
                                <td><%=rs.getString(1) %></td>
							</tr>
						<%  }
						
						
					}catch(Exception e){
						out.println(e);
					}
			
			
				%>
				</table>
			</center>
			
			
			<html>
	
</html>
	</body>

</html>