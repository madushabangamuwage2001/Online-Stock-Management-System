<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Item Details</title>

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

</style>
</head>
<body>

<table width="100%" >
     <tr>
     	<td width="475" height="700" class="admin-bord">
     		<div style="background-color:rgb(44,64,83);height:80px;text-align:center;position:relative;bottom:200px;"><h2 style="position:relative;top:20px;color:#fff;">Admin Dashboard</h2></div><br><br>
     			
     			
     			<a href="admin dashboard.jsp"><input type="submit" name="item" value="Dashboard" class="item"></a><br><br>
     			<a href="itemDetails.jsp"><input type="submit" name="item" value="Item Details" class="item"></a>
     		
     	
     	</td>
     	<td width="2000" height="700">
     	
     	<h1 style="margin-left:65px;position:relative;bottom:100px;">Available Item</h1>
     	
     	 <table style="border-collapse: collapse;margin-left:65px;position:relative;bottom:100px;text-align:center;" border="1" width="90%">
            <thead>
              <tr style="color:#fff;background-color:rgb(74,94,113)">
                <th height="30">Item Code</th>
                <th>Item Name</th>
                <th>Item Quntity</th>
                <th>Item Price</th>
                <th>Item Supplier</th>
                <th></th>
                <th></th>
              </tr>
            </thead>
            <tbody>
            
            <c:forEach var="it" items="${items}">
            
              <tr>
                <td>
                  ${it.itemcode}
                </td>
                <td>${it.itemname}</td>
                <td>${it.itemquntity}</td>
                <td>${it.itemprice}</td>
                <td>${it.supplier}</td>

                <td>
                
                <c:url value="updateItem.jsp" var="itemupdate">
                
		<c:param name="itemcode" value="${it.itemcode}"/>
		<c:param name="itemname" value="${it.itemname}"/>
		<c:param name="itemqtv" value="${it.itemquntity}"/>
		<c:param name="itemprice" value="${it.itemprice}"/>
		<c:param name="supp" value="${it.supplier}"/>
		
		
	</c:url>
   
                <a href="${itemupdate}"><button class="button">
                  <svg class="svg-icon" fill="none" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><g stroke="#a649da" stroke-linecap="round" stroke-width="2"><path d="m20 20h-16"></path><path clip-rule="evenodd" d="m14.5858 4.41422c.781-.78105 2.0474-.78105 2.8284 0 .7811.78105.7811 2.04738 0 2.82843l-8.28322 8.28325-3.03046.202.20203-3.0304z" fill-rule="evenodd"></path></g></svg>
                  <span class="lable"></span>
                </button></a>
                </td><td>
                
               
				<form action="delete" method="post">
				
				<input type="hidden" name="code" value="${it.itemcode}">
		
	
                  <a href="${itemdelete}"><button class="tooltip">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20" height="25" width="25">
                      <path fill="#6361D9" d="M8.78842 5.03866C8.86656 4.96052 8.97254 4.91663 9.08305 4.91663H11.4164C11.5269 4.91663 11.6329 4.96052 11.711 5.03866C11.7892 5.11681 11.833 5.22279 11.833 5.33329V5.74939H8.66638V5.33329C8.66638 5.22279 8.71028 5.11681 8.78842 5.03866ZM7.16638 5.74939V5.33329C7.16638 4.82496 7.36832 4.33745 7.72776 3.978C8.08721 3.61856 8.57472 3.41663 9.08305 3.41663H11.4164C11.9247 3.41663 12.4122 3.61856 12.7717 3.978C13.1311 4.33745 13.333 4.82496 13.333 5.33329V5.74939H15.5C15.9142 5.74939 16.25 6.08518 16.25 6.49939C16.25 6.9136 15.9142 7.24939 15.5 7.24939H15.0105L14.2492 14.7095C14.2382 15.2023 14.0377 15.6726 13.6883 16.0219C13.3289 16.3814 12.8414 16.5833 12.333 16.5833H8.16638C7.65805 16.5833 7.17054 16.3814 6.81109 16.0219C6.46176 15.6726 6.2612 15.2023 6.25019 14.7095L5.48896 7.24939H5C4.58579 7.24939 4.25 6.9136 4.25 6.49939C4.25 6.08518 4.58579 5.74939 5 5.74939H6.16667H7.16638ZM7.91638 7.24996H12.583H13.5026L12.7536 14.5905C12.751 14.6158 12.7497 14.6412 12.7497 14.6666C12.7497 14.7771 12.7058 14.8831 12.6277 14.9613C12.5495 15.0394 12.4436 15.0833 12.333 15.0833H8.16638C8.05588 15.0833 7.94989 15.0394 7.87175 14.9613C7.79361 14.8831 7.74972 14.7771 7.74972 14.6666C7.74972 14.6412 7.74842 14.6158 7.74584 14.5905L6.99681 7.24996H7.91638Z" clip-rule="evenodd" fill-rule="evenodd"></path>
                    </svg>
                    <span class="tooltiptext"></span>
                  </button></a></form></td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
          
          
          
          <a href="addItem.jsp"><input type="submit" name="additem" value="Add item" class="add"></a>
          
          
     	
     	
     	
     	</td>
     </tr>
     
     </table>

</body>
</html>