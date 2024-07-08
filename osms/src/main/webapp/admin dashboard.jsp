<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>



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
	width:305px;
	height:60px;
	position:relative;
	left:5px;
	bottom:200px;
	border:none;
	background-color:#03254c;
	color:white;
	font-size:25px;
}
.home:hover{

	
	color:#fff;
	
}
</style>
 
  </head>
   
  <body>
   
     
     <table width="100%">
     <tr>
     
     	<td width="400" height="700" class="admin-bord">
     	<a href="home.jsp"><button type ="button" name="back to home" value="home" class="home">home</button></a>
     		<div style="background-color:rgb(44,64,83);height:80px;text-align:center;position:relative;bottom:200px;"><h2 style="position:relative;top:20px;color:#fff;">Admin Dashboard</h2></div><br><br>
     			
     			
     			<a href="admin dashboard.jsp"><input type="submit" name="item" value="Dashboard" class="item"></a><br><br>
     			
     			<form action="ItemServlet" method="post">
     			<input type="submit" name="item" value="Item Details" class="item">
     			</form>
     		
     	
     	</td>
     	<td width="1200" height="700"><img src="image/attachment.png"></td>
     </tr>
     
     </table>


</body>
</html>