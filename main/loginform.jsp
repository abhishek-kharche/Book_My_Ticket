<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="regfail.html" %>
<html>
<head>
<meta http-equiv="refresh" content="1;url=signin.html">
<title>login</title>
</head>

<body background="bg.jpeg">

<p>
  <%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:login");
Statement st = conn.createStatement();
String user=request.getParameter("user");
String pass=request.getParameter("pass");
String alt_email=request.getParameter("alt_email");
String f_name=request.getParameter("f_name");
String l_name=request.getParameter("l_name");
String country=request.getParameter("country");
String state=request.getParameter("state");
String postal=request.getParameter("postal");
String gender=request.getParameter("gender");
String opt=request.getParameter("opt");
String sans=request.getParameter("sans");
String sec_pass=request.getParameter("sec_pass");

String x = "insert into login values ('" + user + "','" + pass + "','" + alt_email + "','" + opt + "','" + sans + "','" + sec_pass + "','" + f_name + "','" + l_name + "','" + country + "','" + state + "','" + postal + "','" + gender + "')";
st.executeUpdate(x);



%>
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center"><font face="Arial, Helvetica, sans-serif" color="#FFFFFF" size="+5">Registration Successful !!!</font></p>
</body>
</html>