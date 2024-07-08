<!DOCTYPE html>
<html>
<head>
  <title>Stock Management System</title>
  <link rel="stylesheet" type="text/css" href="styles.css">
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>footer html css</title>
    <link rel="stylesheet" href="css/styleFooter.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}
.login{
position:relative;
left:780px;

  position: relative;
  background-color: rgb(230, 34, 77);
  border-radius: 5px;
  box-shadow: rgb(121, 18, 55) 0px 4px 0px 0px;
  padding: 15px;
  background-repeat: no-repeat;
  box-sizing: border-box;
  width: 154px;
  height: 49px;
  color: #fff;
  border: none;
  font-size: 20px;
  transition: all .3s ease-in-out;
  z-index: 1;
  overflow: hidden;

}

.reg{
		
	position:relative;
	left:800px;

  position: relative;
  background:orange;
  border-radius: 5px;
  box-shadow: rgb(121, 18, 55) 0px 4px 0px 0px;
  padding: 15px;
  background-repeat: no-repeat;
  box-sizing: border-box;
  width: 154px;
  height: 49px;
  color: #fff;
  border: none;
  font-size: 20px;
  transition: all .3s ease-in-out;
  z-index: 1;
  overflow: hidden;


}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
  width:150px;
}

.name{
	position:relative;
	font-size:100px
	color:black;
	left:-300px;
	bottom:780px;
	margin-left:20px;
}
.discription{
    position:relative;
	color:black;
	bottom:780px;
	margin-left:20px;
}
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,500;1,400&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    list-style-type: none;
}
body{
    line-height: 1.5;
    font-family: 'Poppins', sans-serif;
}
.container{
    max-width: 1	170px;
    margin: auto;
}
.row{
    display: flex;
    flex-wrap: wrap;
}
.footer{
	margin-top :-405px;
    background-color: #24262b;
    padding: 70px 0;
}
.footer-col{
    width: 25%;
    padding: 0 15px;
}
.footer-col h4{
    font-size: 18px;
    color: #fff;
    text-transform: capitalize;
    margin-bottom: 35px;
    font-weight: 500;
    position: relative;
}
.footer-col h4::before{
    content: '';
    position: absolute;
    left: 0;
    bottom: -10px;
    background-color: #e91e63;
    height: 2px;
    width: 50px;
}
.fotter-col ul li:not(:last-child){
    margin-bottom: 10px;
}
.footer-col ul li a{
    font-size: 16px;
    text-transform: capitalize;
    color:#fff;
    text-decoration: none;
    font-weight: 300;
    color: #bbb;
    display: block;
    transition: all 0.3s ease;
}
.footer-col ul li a:hover{
    color: #fff;
    padding-left: 10px;
}
.footer-col .social-links a{
    display: inline-block;
    height: 40px;
    width: 40px;
    background-color: rgba(255,255,255,0.2);
    margin:0 10px 10px 0;
    text-align: center;
    line-height: 40px;
    border-radius: 50%;
    color: #fff;
}
.footer-col .social-links a:hover{
    color: #24262b;
    background-color: #fff;
}

/* /* /* responsive */
@media(max-width:767px){
    .footer-col{
        width: 50%;
        margin-bottom: 30px;
    }
}
@media(max-width:574px){
    .footer-col{
        width: 100%;
    }
}

:root {
  --white: #ffffff;
  --padding: 1rem 4rem 1rem 4rem;
}

body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

.name {
  text-align: center;
  font-size: 40px;
  margin: 20px 0;
}

.description {
  text-align: center;
  margin: 20px 0;
}

/* Style for the table */
.t1 {
  border-collapse: collapse;
  width: 100%;
  max-width: 300px; /* Adjust the width as needed */
  margin: 0 auto; /* Center the table horizontally */
 
}

.t1 tr {
  border: hide;
}

.t1 td {
  padding: 10px;
  text-align: center;
}

/* Style for the buttons */
.buttonStyle {
  background-color: #191970;
  color: #fff;
  border: none;
  border-radius: 10px;
  padding: 10px 20px;
  cursor: pointer;
  transition: background-color 0.3s;
  text-transform: uppercase;
}

.buttonStyle:hover {
  background-color: blue;
}

/* Style for the button IDs (if needed) */
#button {
  font-weight: bold;
}


.buttonStyle {
  padding: 10px 20px;
  font-size: 1em;
  background-color: #3085C3;
  color: black;
  border: none;
  cursor: pointer;
  width: 100%;
}

.buttonStyle:hover {
  background-color: 362FD9;
}

h1.name {
position:relative;
left:50px;
bottom:700px;
  font-size: 65px; /* Increase the font size */
  font-weight: bold;
  color: #F07409 ; /* Use a blue color (you can choose your preferred color) */
  letter-spacing: 3px; /* Add some letter spacing for emphasis */
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* Add a subtle text shadow */
  font-family: 'Arial', sans-serif; /* Choose your preferred font-family */
  margin: 20px 0; /* Add some margin for spacing */
  text-align: center; /* Center-align the text */
  padding: 10px 20px; /* Add padding to the header */
  border-radius: 10px; /* Round the corners with border-radius */
 

}

table.t1{

margin-left:70%;
position:relative;
bottom:651px;

}



</style>

</head>
<body>


<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="styles.css"> <!-- Link to the CSS file -->
  <title>Online Stock Management System</title>
</head>

<body>
<div class="topnav">
  <a class="active" href="#home">Home</a>
  <a href="#about">About</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
  <a class="login" href="#news">login</a>
  <a class="reg" href="#news">Sign in</a>
  
  
</div>

  <img src="image/002.jpg" width="100%">

  <h1 class="name">InventoryXpert</h1>
  <div class="description">
    <h2></h2>
  </div>

  <table border="1" class="t1">
    <tr>
      <td width="200"><button class="buttonStyle" type="button" id="button">Addmin Dashboard</button></td>
    </tr>
    <tr>
      <td><button class="buttonStyle" type="button" id="button">Stock Manager Dashboard</button></td>
    </tr>
    <tr>
      <td><button class="buttonStyle" type="button" id="button">Order product</button></td>
    </tr>
    <tr>
      <td><button class="buttonStyle" type="button" id="button">other</button></td>
    </tr>
  </table>

</body>

</html>


    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <h4>Compagny</h4>
                        <ul>
                            <li><a href="#">about us</a></li>
                            <li><a href="#">our services</a></li>
                            <li><a href="#">privacy plicy</a></li>
                            <li><a href="#">affiliate</a></li>

                        </ul>
                    
                </div>
                <div class="footer-col">
                    <h4>Get Help</h4>
                        <ul>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">shipping</a></li>
                            <li><a href="#">returns</a></li>
                            <li><a href="#">order status</a></li>
                            <li><a href="#">payment options</a></li>
                        </ul>
                    
                </div>
                <div class="footer-col">
                    <h4>online shop</h4>
                        <ul>
                            <li><a href="#">watch</a></li>
                            <li><a href="#">bag</a></li>
                            <li><a href="#">shoes</a></li>
                            <li><a href="#">dress</a></li>
                        </ul>
                    
                </div>
                <div class="footer-col">
                    <h4>follow us</h4>
                        <div class="social-links">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube"></i></a>
                        </div>
                    
                </div>
            </div>
        </div>
    </footer>
    
</body>
</html>
