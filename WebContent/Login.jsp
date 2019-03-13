<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
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
<center>
<br><br>
<font size="6" color="SlateBlue">
<h2> Login </h2><br>
</font>

<form action="LoginController">
<table>
<tr><td><h4 style="color:Red;">Mobile No  : </h4></td><td> <input title="Number Only And Mininum 10" type="text"   required pattern="[0-9]+.{9,}" name="mobile" maxlength="10" style="background-color:LightGray;"></td></tr>
<tr><td><h4 style="color:Red;">Password   : </h4></td><td> <input type="password"  name="password" style="background-color:LightGray;"></td></tr>
<tr><td><input type="submit" value="LOGIN" style="background-color:SlateBlue;"></td></tr>
</table><br><br>
<b><a href="UserRegister.jsp" style="color:Red;">For New Registration Click Here</a><b>

</form>

</center>

</body>
</html>