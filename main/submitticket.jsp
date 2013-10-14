<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body background="bg1.jpeg">
<p><img src="logofinal.png" width="150" height="70" hspace=150 vspace=10 align=top id="b1" onMouseOver="mouseOver()" onMouseOut="mouseOut()" />
  <img src="heading.jpeg" width="477" height="89" align="top"></p>
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>
  <%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:login");
Statement st = conn.createStatement();
String username=request.getParameter("user");
String tour=request.getParameter("tour");
String date=request.getParameter("date");
String adult=request.getParameter("adult");
String child=request.getParameter("child");
String RadioGroup=request.getParameter("RadioGroup");


String x = "insert into book (user, tour,date_1,adult,children,RadioGroup) values ( '"+username+"','" + tour + "','" + date + "','" + adult + "','" + child + "','" + RadioGroup + "')";

st.executeUpdate(x);

String sql="select * from book where user='"+username+"'";

ResultSet r=st.executeQuery(sql);
out.print("<table border=\"1\"  width=\"1000\" hspace=\"150\" > <th>Transaction ID</th><th>TOUR NAME</th><th>DATE OF DEPARTURE</th><th>NO. OF ADULTS</th><th>NO. OF CHILDREN</th><th>EXTRA RESERVATIONS</th>");
while(r.next())
{
	out.println("<tr><td align=\"center\">TSID_257A"+r.getString("ID") + "</td><td align=\"center\">" + r.getString("tour") + "</td><td align=\"center\">" + r.getString("date_1") + "</td><td align=\"center\">" + r.getString("adult") + "</td><td align=\"center\">" + r.getString("children") + "</td><td align=\"center\">" + r.getString("RadioGroup") +"</td></tr>");
}
out.print("</table>");
%>
</p>
<form id="form1" name="form1" method="post" action="home.html">
  <table width="1000" border="0" cellpadding="0" hspace="150">
    <tr>
      <td align="center"><input type="submit" name="continue" id="continue" value="Continue" /></td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>
</body>
</html>