<%@page import="java.sql.*" %>
<%
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String rollNo=request.getParameter("rollNo");
String name=request.getParameter("name");
String fatherName=request.getParameter("fatherName");
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
        st.executeQuery("insert into student values('"+course+"','"+branch+"','"+rollNo+"','"+name+"','"+fatherName+"','"+gender+"','"+email+"','"+address+"','"+password+"')");
        response.sendRedirect("adminHome.jsp");

}
catch(Exception  e){
out.println(e);
}



%>