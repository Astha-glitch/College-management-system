<%@page import="java.sql.*" %>
<%
String rollno=request.getParameter("rollno");
String physics=request.getParameter("physics");
String chemistry=request.getParameter("chemistry");
String mathematics=request.getParameter("mathematics");
String electrical=request.getParameter("electrical");
String electronics=request.getParameter("electronics");
String chemistrylab=request.getParameter("chemistrylab");
String physicslab=request.getParameter("physicslab");

try{
        Class.forName("oracle.jdbc.OracleDriver");
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SAKET", "845426");
        Statement st=conn.createStatement();
        st.executeQuery("insert into result values('"+rollno+"','"+physics+"','"+chemistry+"','"+mathematics+"','"+electrical+"','"+electronics+"','"+chemistrylab+"','"+physicslab+"')");
        response.sendRedirect("FacultyHome.jsp");

}
catch(Exception  e){
out.println(e);
}







%>



