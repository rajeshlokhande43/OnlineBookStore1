<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*"%>
     <%@ page import="com.rajesh.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank You</title>
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
<center>
<h4><a href="Login.jsp">Log Out</a></h4>
<br><br>
<font size="5">


<b><h3 style="color:Red;">Your Order has been confirmed.The Books shall be delivered within 2 days. </h3></b>
<b><h3 style="color:Red;">Thank you for Online Book Shopping</h3></b><br><br>

<a href="UserBookDisplay2">Click Here to Shop again</a>
</font>
</center>
</body>
</html>