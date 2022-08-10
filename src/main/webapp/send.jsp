<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
             <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
 
<% 

String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String username=request.getParameter("username");
String password=request.getParameter("password");
String gender=request.getParameter("gender");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinesystem","root","password");
PreparedStatement ps;

String sql="INSERT INTO signup(name,email,phone,username,password,gender)values(?,?,?,?,?,?)";
ps=conn.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, email);
ps.setString(3, phone);
ps.setString(4,username);
ps.setString(5, password);
ps.setString(6, gender);
int i=ps.executeUpdate();
if(i>0)
{
	out.println("<script>alert('Data has bee inserted');window.location='index.jsp'</script>");
}
else
{
	out.println("<script>alert('samething went wrong')</script>");
}
}catch(Exception e)
{
System.out.print(e);

e.printStackTrace();
}

%>