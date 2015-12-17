<%-- index.jsp --%>
<%@page session="false"%>
<%@ page import="org.currency.app.springmvccurrency.controller.ConverterBean,java.math.*" %>
<%@ page contentType="text/html; charset=ISO-8859-5" %>

<html>
<head>
<title>Currency Conversion Application</title>
</head>

<body BGCOLOR="#9c9c9c">
"<jsp:useBean id="converter" 
class="org.currency.app.springmvccurrency.controller.ConverterBean"/>

<h1><FONT FACE="ARIAL" SIZE=12>Currency Conversion Application 
</FONT></h1>
<hr>
<p><FONT FACE="ARIAL" SIZE=10>Enter an amount to convert:</p> 
</FONT>
<form method="get">
<input type="text" name="amount" size="25">
<br>
<p>
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</form>
<%
String amount = request.getParameter("amount");

if ( amount != null && amount.length() > 0 ) {

%>
<p><FONT FACE="ARIAL" SIZE=10><%= amount %> dollars are  

<jsp:setProperty name="converter" property="yenAmount" 
value="<%= new BigDecimal(amount)%>" />
<jsp:getProperty name="converter" property="yenAmount"  /> Yen. 

<p><%= amount %> Yen are

<jsp:setProperty name="converter" property="euroAmount" 
value="<%= new BigDecimal(amount)%>" />
<jsp:getProperty name="converter" property="euroAmount"  /> 
Euro. </FONT>

<% 
} 
%>

</body>
</html>