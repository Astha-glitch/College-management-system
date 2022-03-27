<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<title>Faculty</title>
<body>
<img src="logo.png"  align="left"width="100" height="100">
<center>
<img src="apj sir.png" align="right"  width="100" height="100"></center>
<div class="w3-container">
  <div class="w3-bar w3-black">
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris')">Insert New Result</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Registered Students</button>
     <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')">All Student Result</button>
     <a href="Attendance.html" class="w3-bar-item w3-button tablink">Mark Attendance</a>
     <a href="Login.html" class="w3-bar-item w3-button tablink">Logout</a>
  </div>
  
  <div id="Paris" class="w3-container w3-border city">
  <br>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>



<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Insert New Result</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="insertNewResult.jsp" method="post">
                                <div class="form-group row">
                                    <label for="rollno" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                    <div class="col-md-6">
                                        <input type="text"class="form-control" name="rollno">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="physics" class="col-md-4 col-form-label text-md-right">Engg. Physics-I</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="physics">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="chemistry" class="col-md-4 col-form-label text-md-right">Engg. Chemistry</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="chemistry">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="mathematics" class="col-md-4 col-form-label text-md-right">Engg. Mathematics-I</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="mathematics">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="electrical" class="col-md-4 col-form-label text-md-right">Basic Electrical Engg</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="electrical">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="electronics" class="col-md-4 col-form-label text-md-right">Electronic Engg.</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="electronics">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="chemistrylab" class="col-md-4 col-form-label text-md-right">Engg. Chemistry Lab</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="chemistrylab">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="physicslab" class="col-md-4 col-form-label text-md-right">Engg. Physics Lab</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="physicslab">
                                    </div>
                                </div>
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                       Save
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
        <br>
    </div>

</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html> 
  </div>

  <div id="Tokyo" class="w3-container w3-border city" style="display:none">
  
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
         <th>Course Name</th>
          <th>Branch Name</th>
          <th>Roll Number</th>
          <th>Name</th>
          <th>Father Name</th>
          <th>Gender</th>
          <th>Email</th>
          <th>Address</th>
          <th>Password</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <%@page import="java.sql.*" %>
      <% 
      try{
        Class.forName("oracle.jdbc.OracleDriver");			
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SAKET", "845426");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from student");
        while(rs.next())
        {
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

      </tbody>
      <%}}
      catch(Exception e){}%>
    </table>
  </div>
</section>
</div>
<div id="Tokyo1" class="w3-container w3-border city" style="display:none">
   
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Roll Number</th>
          <th>Engg. Physics-I</th>
          <th>Engg. Chemistry</th>
          <th>Engg. Mathematics-I</th>
          <th>Basic Electrical Engg</th>
          <th>Electronic Engg.</th>
          <th>Engg. Chemistry Lab</th>
          <th>Engg. Physics Lab</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <%@page import="java.sql.*" %>
      <% 
      try{
        Class.forName("oracle.jdbc.OracleDriver");			
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SAKET", "845426");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from result");
        while(rs.next())
        {
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
        </tr>
      </tbody>
      <%}}
      catch(Exception e){}%>
    </table>
  </div>
</section>

</div>
    <hr class="new1">
  <center><h5>Note: Any errors occur then contact BTech Days.
Designed & Developed by BTech Days Team</h5></center>
  <hr class="new1">
<center><h5>All Right Reserved @ BTech Days :: 2015-2020</h5></center> 
  <hr class="new1">
<br>
</body>
</html>