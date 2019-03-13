<%@page import="com.rajesh.controller.Purchase"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*"%>
     <%@ page import="com.rajesh.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm</title>
</head>
<style>
body {
  background-image: url("blue-book-background.jpg");
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: repeat;
  background-size: cover;
}
h2 {
  text-shadow: 3px 2px Gray;
}
h4 {
  text-align: right;
  
}
a:link {
  background-color: none;
}

a:visited {
  background-color: cyan;
}

a:hover {
  background-color: lightgreen;
}

a:active {
  background-color: hotpink;
}
</style>
<body>

<%
Book s=(Book)session.getAttribute("bookdata");
 Integer q=((Integer)session.getAttribute("quant")); 
User m=(User)session.getAttribute("mobile");
/*  Long m=(Long)session.getAttribute("mobile"); */ 
 
%>
<center>
<h4><a href="Login.jsp">Log Out</a></h4>
<br><br>
<font size="5" color="red">
<h2>Confirm Address :</h2>
</font>
<table>
<tr><td><h4 style="color:Red;">Name    : </h4></td><td><b style="color:Yellow;"><%=m.getName() %></b></td></tr>
<tr><td><h4 style="color:Red;">Address : </h4></td><td><b style="color:Yellow;"><%=m.getAddress() %></b></td></tr>
<tr><td><h4 style="color:Red;">City    : </h4></td><td><b style="color:Yellow;"><%=m.getCity() %></b></td></tr>
<tr><td><h4 style="color:Red;">Pin-Code : </h4></td><td><b style="color:Yellow;"><%=m.getPincode() %></b></td></tr>
 </table>

<%--  Mobile : <%=m %><br><br>  --%>
<font size="5" color="red">
<h2>Order Details :</h2>
</font>

<table  >

<tr><td><h4 style="color:Red;">Book Name  </h4></td><td> :  <b style="color:Yellow;"><%=s.getName() %></b> </td></tr>
<tr><td><h4 style="color:Red;">Author     </h4></td><td> :  <b style="color:Yellow;"><%=s.getAuthor() %></b></td></tr>
<tr><td><h4 style="color:Red;">Total Price </h4> </td><td> : <b style="color:Yellow;"> <%=s.getPrice() * q%></b></td></tr>

</table>

<a href="Delivered.jsp"><input type="submit" value="CONFIRM" style="background-color:SlateBlue;"></a>
<a href="UserBookDisplay2"><input type="submit" value="CANCEL" style="background-color:SlateBlue;"></a>

</center>

</body>
</html>