<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.net.*"%>

<%

String regno1=request.getParameter("regno");

String name1=request.getParameter("name");
String dept1=request.getParameter("dept");
String year1=request.getParameter("year");
String email1=request.getParameter("email");
String contact1=request.getParameter("contact");
String password1=request.getParameter("password");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","");
out.println("successfully connected<br>");

out.println(regno1);
out.println(name1);
out.println(dept1);
out.println(year1);
out.println(email1);
out.println(contact1);
out.println(password1);

Statement st=con.createStatement();
if(st!=null){
	out.println("<br>ready to execute<br>");
}
int  i =st.executeUpdate("insert into reg_table (reg_no,name,email,dept,year,contact,password)"+" values ('"+regno1+"','" +name1+"','" +email1+"','"+dept1+" ','"+year1+"','"+contact1+"','"+password1+"')" );
out.println(i);
if(i!=0){
out.println("inserted");
 response.sendRedirect("index.html");
}
}
catch(Exception e)
{
	System.out.println("could not connect");
}

%>




