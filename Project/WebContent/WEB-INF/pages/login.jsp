

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body
{

 background:pink;
}

</style>


<body >

<div >

<h1 align="center"  >LOGIN FORM</h1>

<form action="login" do="POST">


<table align="center">
<tr >
  <td>enter the email id</td>
  <td><input type="text" name="userid" ></td>
  </tr>
  <tr>
  <td></td>
  </tr>
  <tr>
  <td></td>
  </tr>
  <tr>
  <td>enter the password</td>
  <td colspan="2" ><input type="password" name="password"></td>
  </tr>
  <tr>
  <td></td>
  </tr>
  <tr>
  <td></td>
  </tr>
  <tr>
  <td></td>
  <td colspan="2" align="center"><input type="submit" value="login"></td>
  </tr>

</table>

<a href="regPage">CREATE A NEW ACCOUNT</a>

</form>
</div>
</body>
</html>