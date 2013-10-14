<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Bookticket</title>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script><script type="text/javascript">
function mouseOver()
{
document.getElementById("b1").src ="logofinal_2_2.png";
}
function mouseOut()
{
document.getElementById("b1").src ="logofinal.png";
}

function getlink1()
{
	var queryString = window.top.location.search.substring(1);
	var begin=queryString.indexOf("=");
	var param=queryString.substring(begin,queryString.length);
	var add="submitticket.jsp?user"+param;
	document.getElementById("form1").action=add;	
}

function getlink()
{
	var queryString = window.top.location.search.substring(1);
	var begin=queryString.indexOf("=");
	var param=queryString.substring(begin,queryString.length);
	var add="viewticket.jsp?user"+param;
	document.getElementById("gotolink").href=add;	
}
</script>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />

<style type="text/css">

.abc {
	font-family: Arial, Helvetica, sans-serif;
	color:#FFF;
	font-size:16px;
}
</style>
</head>

<body background="bg.jpeg">
<p><img src="logofinal.png" width="150" height="70" hspace=150 vspace=10 align=top id="b1" onMouseOver="mouseOver()" onMouseOut="mouseOut()" />
  <img src="heading.jpeg" width="477" height="89" align="top"></p>
  
  
</p>
<p>&nbsp;</p>
<p align="center" class="abc">To view previously registered tickets <a href="viewticket.jsp" id="gotolink" onclick="getlink()" class="abc">Click Here</a></p>
<p align="center" class="abc">&nbsp;</p>
<form id="form1" name="form1" method="post" onsubmit="getlink1()" action="">
  <table width="816" border="0" cellpadding="0" hspace="350">
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td width="204"><div align="right"><span class="abc">Select Tour : </span></div></td>
      <td width="27">&nbsp;</td>
      <td width="569"><label for="tour"></label>
        <select name="tour" id="tour">
          <option>Kashmir Vaishnodevi - Classic</option>
          <option>Kashmir Vaishnodevi - Cost Saver</option>
          <option>Kerala Classic</option>
          <option>Kerala Cost Saver</option>
          <option>Leh Ladak Classic</option>
          <option>Leh Ladak Cost Saver</option>
          <option>Nainital Mussoorie Classic</option>
          <option>Nainital Mussoorie Cost Saver</option>
          <option>Nepal</option>
          <option>Rajasthan Jaipur Classic</option>
          <option>Rajasthan Jaipur Cost saver</option>
          <option>Shimla Manali Classic</option>
          <option>Shimla Manali Cost saver</option>
          <option>Sikkim Darjeeling Classic</option>
          <option>Sikkim Darjeeling Cost saver</option>
          <option>America</option>
          <option>Australia</option>
          <option>Dubai</option>
          <option>Euro trip</option>
          <option>Singapore</option>
      </select></td>
    </tr>
    <tr>
      <td><div align="right"><span class="abc">Date :</span></div></td>
      <td>&nbsp;</td>
      <td><span id="sprytextfield1">
      <input type="text" name="date" id="date" />
      <span class="textfieldInvalidFormatMsg"><font face="Arial, Helvetica, sans-serif" color="#FFFFFF">Invalid format.</font></span><span class="textfieldRequiredMsg"><font face="Arial, Helvetica, sans-serif" color="#FFFFFF">Enter Date</font></span></span><span class="abc"> (dd/mm/yyyy)</span></td>
    </tr>
    <tr>
      <td><div align="right" class="abc">No. of Adults : </div></td>
      <td>&nbsp;</td>
      <td><span id="sprytextfield2">
      <label for="adult"></label>
      <input name="adult" type="text" id="adult" size="2" />
      <span class="textfieldRequiredMsg"><font face="Arial, Helvetica, sans-serif" color="#FFFFFF">A value is required.</font></span><span class="textfieldInvalidFormatMsg"><font face="Arial, Helvetica, sans-serif" color="#FFFFFF">Invalid format.</font></span><span class="textfieldMinValueMsg"><font face="Arial, Helvetica, sans-serif" color="#FFFFFF">Minimum 1 required.</font></span></span></td>
    </tr>
    <tr>
      <td><div align="right" class="abc">No. of children : </div></td>
      <td>&nbsp;</td>
      <td><span id="sprytextfield3">
      <label for="child"></label>
      <input name="child" type="text" id="child" size="2" />
      <span class="textfieldRequiredMsg"><font face="Arial, Helvetica, sans-serif" color="#FFFFFF">A value is required.</font></span><span class="textfieldInvalidFormatMsg"><font face="Arial, Helvetica, sans-serif" color="#FFFFFF">Invalid format.</font></span><span class="textfieldMinValueMsg"><font face="Arial, Helvetica, sans-serif" color="#FFFFFF">Minimum 0 required.</font></span></span></td>
    </tr>
    <tr>
      <td><div align="right" class="abc">Additional Booking : </div></td>
      <td>&nbsp;</td>
      <td><font face="Arial, Helvetica, sans-serif" color="#FFFFFF">
        <label>
          <input type="radio" name="RadioGroup" value="None" id="RadioGroup_0" />
          none</label>
        <label>
          <input type="radio" name="RadioGroup" value="Air Ticket" id="RadioGroup_1" />
          Air Ticket</label>
        <label>
          <input type="radio" name="RadioGroup" value="Railway" id="RadioGroup_2" />
          Railway</label>
      </font></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="right"></div></td>
      <td>&nbsp;</td>
      <td><p>
        <input type="submit" name="submit_book" id="submit_book" value="Submit" />
        <input type="reset" name="reset" id="reset" value="Reset" />
      </p></td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "date", {format:"dd/mm/yyyy", useCharacterMasking:true, validateOn:["blur"]});
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "integer", {validateOn:["blur"], minValue:1});
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3", "integer", {minValue:0, validateOn:["blur"]});
</script>


</body>
</html>