<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
     <%@ page import="com.rajesh.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<br><br><br><br>
<%
List<Book> bk=(List<Book>)session.getAttribute("values");

%>
<center>
<br><br><br><br>
<font size="4"  color="Red">Book List</font>
<table border="2" bgcolor="Yellow"  bordercolor="Red">
<tr>
<th>BookID</th><th>BookName</th><th>Author</th><th>Price</th><th>Update</th><th>Delete</th>
</tr>

<% 
for(Book b:bk)
{%>
<tr>
<td><a href="SingleDisplay?bid=<%=b.getId() %>"><%=b.getId() %></a></td>
<td><%=b.getName() %></td>
<td><%=b.getAuthor() %></td>
<td><%=b.getPrice() %></td>
<td><a href="BookUpdate.jsp?bid=<%=b.getId() %>">Update</a></td>
<td><a href="BookDelete?bid=<%=b.getId() %>">Delete</a></td>
</tr>
<% }
%>
</table>
<br><br>
<a href="Book.jsp">Click here to add Book</a>
</center>
</body>
</html>