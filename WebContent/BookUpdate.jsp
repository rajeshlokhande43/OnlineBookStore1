<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<center>
<font color="Blue" size="5">
<u> Book Update</u>
<br><br>
<% String id=request.getParameter("bid"); %>
</font>

<form action="BookUpdate" >
 BOOK ID  ==>  <input type="text" name="id"  value="<%=id %>"><br><br>
Enter BookName<input type="text" name="name"><br><br>
Enter Author  <input type="text" name="author"  ><br><br>
Enter Price   <input type="text" name="price"  ><br><br>

<input type="submit" value="Submit">



</form>
</center>

</body>
</html>