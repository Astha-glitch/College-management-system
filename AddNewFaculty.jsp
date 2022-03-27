<%@page import="java.sql.*" %>
<%
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String facultyid=request.getParameter("facultyid");
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String address=request.getParameter("address");
String password=request.getParameter("password");
//String dob=request.getParameter("dob");
//String contact=request.getParameter("contact");


try{
        Class.forName("oracle.jdbc.OracleDriver");
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SAKET", "845426");
        Statement st=conn.createStatement();
        st.executeQuery("insert into faculty values('"+course+"','"+branch+"','"+facultyid+"','"+name+"','"+gender+"','"+email+"','"+address+"','"+password+"')");
        response.sendRedirect("adminHome.jsp");

}
catch(Exception  e){
out.println(e);
}



%>