<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
     <%@ page import="com.rajesh.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
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
Book s=(Book)session.getAttribute("values");
Long m=(Long)session.getAttribute("mobile");
%>
<center>
<h4><a href="Login.jsp">Log Out</a></h4>
<br><br>
<font size="6" color="red"> <h2>Cart</h2> </font>
<br><br>
<table>

<tr><td><h4 style="color:Red;">Book Name : </h4></td><td><b style="color:Yellow;"><%=s.getName() %></b></td></tr>
<tr><td><h4 style="color:Red;">Book Author : </h4></td><td> <b style="color:Yellow;"><%=s.getAuthor() %></b></td></tr>
<tr><td><h4 style="color:Red;">Book Price : </h4></td><td><b style="color:Yellow;"><%=s.getPrice() %></b></td></tr>
</table>
<table>
<form action="Purchase">
<tr><td><input type="hidden" value="<%=s.getId()%>" name="bid"></td></tr>
<tr><td><input type="hidden" value="<%=m%>" name="mobile"></td></tr>
<tr><td><h4 style="color:Red;">Quantity : <input type="text" name="quantity" value="1" style="background-color:LightGray;"></h4><br></td></tr>
<tr><td><input type="submit" value="PURCHASE" style="background-color:SlateBlue;">
</form>
<a href="UserBookDisplay2"><input type="submit" value="CANCEL" style="background-color:SlateBlue;"></a></td></tr>
</table>

</center>

</body>
</html>