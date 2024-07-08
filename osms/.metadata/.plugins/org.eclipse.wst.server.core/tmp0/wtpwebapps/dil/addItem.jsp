<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Item</title>


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
     		<div style="background-color:rgb(44,64,83);height:80px;text-align:center;position:relative;bottom:200px;"><h2 style="position:relative;top:20px;color:#fff;">Admin Dashboard</h2></div><br><br>
     			
     			
     			<a href="admin dashboard.jsp"><input type="submit" name="item" value="Dashboard" class="item"></a><br><br>
     			<a href="itemDetails.jsp"><input type="submit" name="item" value="Item Details" class="item">
     		
     	
     	</td>
     	<td width="2000" height="700">
     	
     	<h1 style="margin-left:35%;">Add Item</h1><br>
     	
     	<form class="forem" action="add" method="post">
      <div class="form-group">
        <p>Item Code:</p>
        <input type="text" id="itemCode" name="itemCode" required style="width:300px;height:30px;border-radius: 5px;" readonly>
      </div><br>
      <div class="form-group">
        <p>Item Name:</p>
        <input type="text" id="itemName" name="itemName" required style="width:300px;height:30px;border-radius: 5px;">
      </div><br>
      <div class="form-group">
        <p>Item Quantity:</p>
        <input type="number" id="itemQuantity" name="itemQuantity" required style="width:300px;height:30px;border-radius: 5px;">
      </div><br>
      <div class="form-group">
        <p>Item Price:</p>
        <input type="text" id="itemPrice" name="itemPrice" required style="width:300px;height:30px;border-radius: 5px;">
      </div><br>
      <div class="form-group">
        <p>Select Supplier:</p>
        <select id="supplier" name="supplier" required style="width:300px;height:30px;border-radius: 5px;">
          <option value="" disabled selected>Select a supplier</option>
          <option value="supplier1">Supplier 1</option>
          <option value="supplier2">Supplier 2</option>
          <option value="supplier3">Supplier 3</option>
        </select>
      </div>
      

          
          <input type="submit" name="additem" value="Submit" class="add">
          
              </form>
     	
     	
     	
     	</td>
     </tr>
     
     </table>


</body>
</html>