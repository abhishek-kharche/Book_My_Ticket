<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<html>
<head>
<title>Your password</title>

<script type="text/javascript">
function mouseOver()
{
document.getElementById("b1").src ="logofinal_2_2.png";
}
function mouseOut()
{
document.getElementById("b1").src ="logofinal.png";
}


</script>

</head>

<body background="bg.jpeg">

<div align="center">
<table width="816" hspace="317" border="0" cellpadding="0">
    <tr>
      <td width="168"><img src="logofinal.png" width="150" height="70" align=top id="b1" onMouseOver="mouseOver()" onMouseOut="mouseOut()" /></td>
      <td width="35">&nbsp;</td>
      <td width="605"><img src="heading.jpeg" width="477" height="89" align="top"></td>
    </tr>
</table>
  
  
<%

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection conn = DriverManager.getConnection("jdbc:odbc:login");
	Statement st = conn.createStatement();

	String sans=request.getParameter("ans");
	String user=request.getParameter("user");
	String x="select sans from login where user='"+user+"'";
	
	ResultSet r=st.executeQuery(x);
	r.next();
	
	if(r.getString("sans").equalsIgnoreCase(sans))
	{
		String pass="select pass from login where user='"+user+"'";
		ResultSet find=st.executeQuery(pass);
		find.next();
		
		out.print("<div align='center'><font face='arial' color='white' size='3'><br/><br/><br/><br/>Your Password is "+find.getString("pass")+"</font></div>");
		
		out.print("<br><br><form action='signin.html'><input type='submit' value='Login'></form>");
		
	}
	
	else
	{
		out.print("<div align='center'><font size='3' face='arial' color='white'><br/><br/><br/>Password mismatch.. </font><br/><br/><form action='signin.html'><input type='submit' value='Try again'></form></div>");

	}
		

%>
  
  
</body>
</html>
