<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">

<title>Patient Details</title>

<link rel="stylesheet" href="Views/bootstrap.min.css">
<link rel="stylesheet" href="Views/style.css">
<script src="Components/jquery-3.5.0.min.js"></script>
<script src="Components/main.js"></script>

</head>

<body>
<div class="container"> 
	<div class="row">  
		<div class="col-8">       
			<h1 class="m-3">Add new patient</h1>
			        
			<form id="formPatient"> 
			     
			     <!--ID -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblId">Id No:   </span>    
					</div>   
					
				 	<input type="number" id="id" name="id" min="1" max="150">   
				</div>
				   
				<!-- NAME -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblName">Name: </span>    
					</div>   
					
				 	<input type="text" id="name" name="name">   
				</div>
				
				<!-- GENDER -->   
				<div class="input-group input-group-sm mb-3">    
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblName">Gender: </span>    
					</div>   
					 &nbsp;&nbsp;Male  
				<input type="radio" id="rdoGenderMale" name="rdoGender" value="Male">    
					 &nbsp;&nbsp;Female  
				<input type="radio" id="rdoGenderFemale" name="rdoGender" value="Female">
				   
				</div>
				
				<!-- AGE -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblAge">Age : </span>    
					</div>   
					
				 	<input type="number" id="age" name="age" min="1" max="150">   
				</div>
				
				<!-- MEDICLE REPORT -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblMedicleReport">Medical Reports: </span>    
					</div>   
					
				 	<input type="text" id="medicleReport" name="medicleReport">   
				</div>
				
				<!-- CONTACT No -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblContactNo">Contact Number: </span>    
					</div>   
					
				 	<input type="tel" id="contactNo" name="contactNo" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}">   
				</div>
				
				<!-- EMAIL -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblEmail">Email: </span>    
					</div>   
					
				 	<input type="email" id="email" name="email">   
				</div>
				
				<!-- ADDRESS -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblAddress">Addre: </span>    
					</div>   
					
				 	<input type="text" id="address" name="address">   
				</div>
				
				
				<!-- TIME -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblTime">Time: </span>    
					</div>   
					
				 	<input type="time" id="time" name="time">   
				</div>
				
				<!-- DATE -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblDate">Date: </span>    
					</div>   
					
				 	<input type="date" id="date" name="date">   
				</div>
				
				<div id="alertSuccess" class="alert alert-success"></div>   
				<div id="alertError" class="alert alert-danger"></div> 
 
				<input type="button" id="btnSave" value="Save" class="btn btn-primary">  
			</form>  
			
		</div> 
	</div>    
	
	<br>
	<h2>Patient</h2>
	<div class="row">
		<ul id="patient" class="row" ></ul>
	</div>    
	
	<div class="row">  
		<div class="col-12" id="patient"></div> 
	</div> 
 
</div>

</body>
</html>