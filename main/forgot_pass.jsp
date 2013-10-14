<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="nouser.html" %>

<html>
<head>
<title>Forgot Password</title>

<script type="text/javascript">
function mouseOver()
{
document.getElementById("b1").src ="logofinal_2_2.png";
}
function mouseOut()
{
document.getElementById("b1").src ="logofinal.png";
}

function addr()
{
	
	var queryString = window.top.location.search.substring(1);
	var begin=queryString.indexOf("=");
	var param=queryString.substring(begin,queryString.length);
	var add="find_pass.jsp?user"+param;
	document.getElementById("form1").action=add;		
	
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
<p>
  <%

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection conn = DriverManager.getConnection("jdbc:odbc:login");
	Statement st = conn.createStatement();

	String username=request.getParameter("user");

	String x="select * from login where user='"+username+"'";
	ResultSet r=st.executeQuery(x);
	r.next();
	String check=r.getString("sec_pass");
	
	if(check.equals("sques"))
	{
		out.print("<br/><br/><div align='center'><font face='arial' size='3' color='white'>Security Question : Which is your "+r.getString("opt")+" ?</font></div>");
	}
	else
	{
	
		String y="select alt_email from login where user='"+username+"'";
		ResultSet res=st.executeQuery(y);
		res.next();
		
		out.print("<div align='center'><font face='arial' size='14px' color='white'>Your password has been mailed to "+res.getString("alt_email")+"</font></div>");
	
	}
		
%>
</p>
<form name="form1" id="form1" method="post" onSubmit="addr()" action="">
  <table id="table" width="357" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
      <td width="162"><div align="right"><font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">Your answer :</font></div></td>
      <td width="10">&nbsp;</td>
      <td width="187"><label for="ans"></label>
      <input name="ans" type="text" id="ans" size="30"></td>
    </tr>
    <tr>
      <td><div align="right"></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="right"></div></td>
      <td>&nbsp;</td>
      <td><input type="submit" name="subans" id="subans" value="Send Answer"></td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>

</body>
</html>