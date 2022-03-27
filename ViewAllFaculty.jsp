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
				<th>Faculty_id</th>
				<th>Faculty_Name</th>
				<th>Address</th>
				<th>Email Id</th>
				<th>Account_no</th>
                <th>Password</th>
                <th>Department</th>
			</tr>	
			<center>
				<%
                String name=request.getParameter("name");
                String department=request.getParameter("department");
					try{
						Class.forName("oracle.jdbc.OracleDriver");			
						Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SAKET", "845426");
						
						//Statement st=conn.createStatement();
						
						PreparedStatement ps=conn.prepareStatement("select * from faculty ");
                        
                        //ps.setString(1,name);
                       // ps.setString(2,department);
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