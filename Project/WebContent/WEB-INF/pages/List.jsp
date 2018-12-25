<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*, com.app.Register"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table class="table1"><tr><td><font size="10" color="red"><b>ALL USERS</b></font>

<table border=1 width="100" align="center">
<tr>
<td>USERID</td>
<td>USERNAME</td>
<td>MOBILENO</td>
<td>PASSWORD</td>
<td>CONFIRM</td>
</tr>
<%
List <Register> register=(List<Register>)request.getAttribute("list");
	for(Register r:register){%>
	<tr>
	<td><%=r.getUserid()%></td>
    <td><%=r.getUsername()%></td>
    <td><%=r.getMobileno()%></td>
    <td><%=r.getPassword()%></td>
    <td><%=r.getConfirm()%></td>

</tr>

<%}

%>



</table>
<li><a href="fpage">Log out</a></li>

</body>
</html>