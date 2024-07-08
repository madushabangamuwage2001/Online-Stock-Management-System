<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>


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
.add{

	border-radius:5px;
	width:150px;
	height:30px;
	margin-left:65px;
	border:none;
	background-color:rgb(255, 128, 0);
	margin-top:30px;
}
.add:hover{

	background-color:rgb(7, 154, 51);
	color:#fff;
	
}
.forem{
	margin-left:35%;
}

</style>
</head>
<body>

<table width="100%" >

     <tr>
     	<td width="475" height="700" class="admin-bord">
     		<div style="background-color:rgb(44,64,83);height:80px;text-align:center;position:relative;bottom:200px;"><h2 style="position:relative;top:20px;color:#fff;">User Dashboard</h2></div><br><br>
     			
     			
     			<a href="smdashboard.jsp"><input type="submit" name="item" value="Dashboard" class="item"></a><br><br>
     			<a href="userDetails.jsp"><input type="submit" name="item" value="User Details" class="item"></a>
     		
     	
     	</td>
     	<td width="2000" height="700">
     	
     	<h1 style="margin-left:35%;">Add User</h1><br>
     	
     	<form class="forem" action="AddUserServlet" method="post">
      <div class="form-group">
        <p>User ID:</p>
        <input type="text" id="itemCode" name="userCode" required style="width:300px;height:30px;border-radius: 5px;" readonly>
      </div><br>
      <div class="form-group">
        <p>User Name:</p>
        <input type="text" id="itemName" name="username" required style="width:300px;height:30px;border-radius: 5px;">
      </div><br>
      <div class="form-group">
        <p>User Contact:</p>
        <input type="text" id="itemQuantity" name="useusercontact" required style="width:300px;height:30px;border-radius: 5px;">
      </div><br>
      <div class="form-group">
        <p>User Address:</p>
        <input type="text" id="itemPrice" name="uaeradd" required style="width:300px;height:30px;border-radius: 5px;">
      </div><br>
      <div class="form-group">
        <p>User Email:</p>
        <input type="text" id="itemPrice" name="useremail" required style="width:300px;height:30px;border-radius: 5px;">
      </div><br>
      <div class="form-group">
        <p>User NIC:</p>
        <input type="text" id="itemPrice" name="nic" required style="width:300px;height:30px;border-radius: 5px;">
      </div><br>
      
      

          
          <input type="submit" name="adduser" value="Submit" class="add">
          
              </form>
     	
     	
     	
     	</td>
     </tr>
     
     </table>


</body>
</html>