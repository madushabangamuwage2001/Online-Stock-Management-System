<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>stock management Dashboard</title>



<style>
.admin-bord{
	background-color:rgb(74,94,113);
}
body{
	 font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.item{
	
	border-radius:5px;
	width:150px;
	height:30px;
	position:relative;
	left:70px;
	bottom:200px;
	border:none;
}
.item:hover{

	background-color:rgb(7, 154, 51);
	color:#fff;
	
}
.home{
	
	border-radius:5px;
	width:300px;
	height:60px;
	position:relative;
	left:0px;
	bottom:200px;
	border:none;
	background-color:#03254c;
	color:white;
	font-size:25px;
}
.home:hover{

	
	color:#fff;
	
}
img{
	width:75rem;
}
</style>
 
  </head>
   
  <body>
   
     
     <table width="100%">
     <tr>
     	<td width="400" height="700" class="admin-bord">
     	<a href="home.jsp"><button type ="button" name="back to home" value="home" class="home">home</button></a>
     		<div style="background-color:rgb(44,64,83);height:80px;text-align:center;position:relative;bottom:200px;"><h2 style="position:relative;top:20px;color:#fff;">Stock Management Dashboard</h2></div><br><br>
     			
     			
     			<a href="smdashboard.jsp"><input type="submit" name="user" value="Dashboard" class="item"></a><br><br>
     			
     			<form action="UserServlet" method="post">
     			<input type="submit" name="user" value="User Details" class="item">
     			</form>
     		
     	
     	</td>
     	<td width="500" height="700"><img src="image/stock.jpg" class="img"></td>
     </tr>
     
     </table>


</body>
</html>