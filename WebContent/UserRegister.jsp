<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
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
<body>
<center>
<br><br>
<font size="4" color="Red"> <h2>Registration</h2> </font><br><br>


<form method="GET" action="UserController" onsubmit="return checkForm(this);">


<table>
<tr>
<td><h4 style="color:Red;">Mobile No.  :</h4></td><td> <input title="Number Only  And Mininum 10" type="text"   required pattern="[0-9]+.{9,}" name="mobile" maxlength="10" style="background-color:LightGray;"></td>
</tr>
<tr><td><h4 style="color:Red;">Name  : </h4></td><td> <input  type="text"    name="name" style="background-color:LightGray;"></td></tr>
<tr><td><h4 style="color:Red;">Email  : </h4></td><td> <input type="text"  name="email" style="background-color:LightGray;"></td></tr>
<tr><td><h4 style="color:Red;">Password : </h4></td><td> <input title="Password must contain at least 6 characters, including UPPER/lowercase and numbers" type="password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="password" onchange="
  this.setCustomValidity(this.validity.patternMismatch ? this.title : '');
  if(this.checkValidity()) form.pwd2.pattern = RegExp.escape(this.value);
"  style="background-color:LightGray;"></td></tr>
<tr><td><h4 style="color:Red;">Confirm Password : </h4></td><td> <input title="Please enter the same Password as above" type="password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="pwd2" onchange="
  this.setCustomValidity(this.validity.patternMismatch ? this.title : '');
"  style="background-color:LightGray;"></td></tr>
<tr><td><h4 style="color:Red;">Address : </h4></td><td> <input  type="text"   name="address" style="background-color:LightGray;"></td></tr>
<tr><td><h4 style="color:Red;">City : </h4></td><td> <input  type="text"   name="city" style="background-color:LightGray;"></td></tr>
<tr><td><h4 style="color:Red;">Pin-code : </h4></td><td> <input title="Enter PIN-CODE" type="text"   required pattern="[0-9]+" name="pincode" maxlength="6"  style="background-color:LightGray;"></td></tr>
<tr><td><input type="submit" value="REGISTER" style="background-color:SlateBlue;"></td></tr>

</table>
<br>
<a href="Login.jsp">Already Registered</a>
</form>


</center>

</body>
</html>