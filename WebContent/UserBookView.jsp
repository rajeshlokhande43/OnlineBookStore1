<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
     <%@ page import="com.rajesh.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book View</title>

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
<body >
<br><br><br><br>
<%
List<Book> bk=(List<Book>)session.getAttribute("values");
Long m=(Long)session.getAttribute("mobile");
%>
<center>
<h4><a href="Login.jsp">Log Out</a></h4>
<br><br>
<font  size="6" color="Red"><h2>Book List</h2></font><br><br>




<table  border="2" style="background-color:LightGray;" >
<tr>
<th>BookID</th><th>BookName</th><th>Author</th><th>Price</th><th></th>
</tr>

<% 
for(Book b:bk)
{%>
<tr>
<td><%=b.getId() %></td>
<td><%=b.getName() %></td>
<td><%=b.getAuthor() %></td>
<td><%=b.getPrice() %></td>
<td><a href="SingleDisplay?bid=<%=b.getId() %>&m=<%=m %>">Select</a></td>
</tr>
<% }
%>
</table>

<br><br>

</center>
</body>
</html>