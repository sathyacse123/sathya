
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
	background: pink;
}
</style>
<script>
		                        function show()
		                        {
		                        	btn=document.getElementById('bt');
		                        	ch=document.getElementById('ch');
		                        	if(ch.checked==true)
		                        		{
		                        		btn.disabled=false;
		                        		
		                        		}
		                        	else
		                        		{
		                        		btn.disabled=true;
		                        		}
		                          
		                        }
		                        
		                        </script>

<body>
		<form action="registration" method="post">
		<h1 align="center">CREATE A NEW GMAIL ACCOUNT</h1>

		<div align="center">
			USER ID :<input type=text name="userid" /><br>
			<br> USER NAME :<input type=text name="username" /><br>
			<br> MOBILE NO :<input type=text name="mobileno" /><br>
			<br> PASSWORD :<input type=text name="password" /><br>
			<br> CONFIRM PASSWORD :<input type=text name="confirm" /><br>
			<br> <input type=checkbox id=ch onclick=show()>I agree
			to the terms and conditions <br>
			<br> <input type=submit value="next" disabled id=bt><br>
			<br> <a href="login.jsp">Log in</a>

		</div>

	</form>
	</body>
	</html>



