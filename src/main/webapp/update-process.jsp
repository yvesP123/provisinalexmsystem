<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
 <%
 String id = request.getParameter("id");
 String name=request.getParameter("name");
 String email=request.getParameter("email");
 String phone=request.getParameter("phone");
 String username=request.getParameter("username");
 String gender=request.getParameter("gender");
Class.forName("com.mysql.jdbc.Driver");
 Connection conn;
 PreparedStatement ps;
 String url="jdbc:mysql://localhost:3306/onlinesystem";
 String user="root";
 String pass="password";
 int pid = Integer.parseInt(id);
 conn=DriverManager.getConnection(url,user,pass);
 String sql="UPDATE signup SET name=?,email=?,phone=?,username=?,gender=? WHERE id="+id;
 ps=conn.prepareStatement(sql);
 ps.setString(1, name);
 ps.setString(2, email);
 ps.setString(3, phone);
 ps.setString(4, username);
 ps.setString(5, gender);
 int i=ps.executeUpdate();
 if(i>0)
 {
	 out.println("<script>alert('Record Updated');window.location='Dashboard.jsp';</script>");
	 
 }
 else{
	 out.println("<script>alert('Samething Went Wrong');window.location='Dashboard.jsp';</script>");
	  
 }
 
 %>
 
