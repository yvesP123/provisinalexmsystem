<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinesystem", "root", "password");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM signup WHERE id="+id);
out.println("<script>alert('Data Deleted Successfully!');window.location='Dashboard.jsp';</script>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>	

 