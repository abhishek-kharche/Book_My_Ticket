<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="logfailure.html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:login");
Statement st = conn.createStatement();
String username=request.getParameter("user");
String password=request.getParameter("pass");

/*String sql = "select pass from login where user="+username;
ResultSet r=st.execute(sql);*/

String x="select pass from login where user='"+username + "'";
ResultSet r=st.executeQuery(x);

r.next();
	if(r.getString("pass").equals(password))
response.sendRedirect("bookticket.jsp?user="+username);
else
response.sendRedirect("logfailure.html");
/*
if(r==null || r.getString("pass")!=password)
	;
else
	if(r.getString("pass")==password)
		

/*do
{r.next();
}while(r.getString("user")!=username);
if(r.getString("pass")==password)
response.sendRedirect("others.html");*/

/*

*/
%>
</body>
</html>