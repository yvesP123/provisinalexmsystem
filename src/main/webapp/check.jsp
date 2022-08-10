<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
String one=request.getParameter("one");
String two=request.getParameter("two");
String three=request.getParameter("three");
String four=request.getParameter("four");
String five=request.getParameter("five");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn;
PreparedStatement ps;
ResultSet rs;
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinesystem","root","password");

int i=0;
int j=0;
int a=0;
int b=0;
int c=0;
if(one.equals("A"))
{
	
	i=4;
}
if(two.equals("D"))
{
	j=4;
}
if(three.equals("B"))
{
	a=4;
}
if(four.equals("B"))
{
	 b=4;
}
if(five.equals("A"))
{
	c=4;
}
int e=i+j+a+b+c;
String n;

if(e>=12)
{
	n="PASS";
}
else
{
	n="FAIL";
}

String username=(String)session.getAttribute("username");
String sql="INSERT INTO exam(marks,eximiner,stutus)values(?,?,?)";
ps=conn.prepareStatement(sql);
ps.setInt(1, e);
ps.setString(2, username);
ps.setString(3, n);
int m=ps.executeUpdate();
if(m>0)
{
	if(e>=12){
	out.println("Name: "+username+"<br>Your Mark is: "+e+ " <br>Your Status: Pass" );	
	}
	else{
		out.println("Name: "+username+"<br>Your Mark is: "+e+ " <br>Your Status: Fail");
	}
}
else{
out.println("fdshrysj");
}
}
catch(Exception e)
{
System.out.print("You are already done exam please");

}
%>