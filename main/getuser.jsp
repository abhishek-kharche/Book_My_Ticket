<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<html>
<head>

<title>user</title>
</head>

<body>

<%

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection conn = DriverManager.getConnection("jdbc:odbc:login");
	Statement st = conn.createStatement();

	String user=request.getParameter("user");

	String x="SELECT * FROM login WHERE user='"+user+"'";
	//out.print(x);
	ResultSet r=st.executeQuery(x);
	
	boolean check = r.next();
	
	if(check==true)
	{
		out.print("<pre><font face='arial' color='#FFFFFF'>  Not Available</font></pre>");
	}
	else
	{
		out.print("<pre><font face='arial' color='#FFFFFF'>  Available</font></pre>");
	}
%>

</body>
</html>