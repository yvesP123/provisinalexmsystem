<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn;
PreparedStatement ps;
ResultSet rs;
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinesystem","root","password");
int e=0;
String n="FAIL";
String username=(String)session.getAttribute("username");
String sql="INSERT INTO exam(marks,eximiner,stutus)values(?,?,?)";
ps=conn.prepareStatement(sql);
ps.setInt(1, e);
ps.setString(2, username);
ps.setString(3, n);
int m=ps.executeUpdate();
if(m>0)
{
	out.println("<script>alert('OOOOh Time Take You Byee You FAIL Exam');windows.location='index1.jsp';</script>");

}
else{
out.println("samething went wroong");
}
}
catch(Exception e)
{
System.out.print("You are already done exam please");

}
%>