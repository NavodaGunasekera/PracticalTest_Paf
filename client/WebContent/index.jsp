<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Views/bootstrap.min.css"> 
<script src="Components/jquery-3.2.1.min.js">
</script> <script src="Components/main.js"></script> 
<title>Insert title here</title>
</head>
<body>
<div class="container"> 
	<div class="row">  
		<div class="col-8">       
			<h1 class="m-3">Patient details</h1>
			        
			<form id="formPatient"> 
			     
			     <!--ID -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblId">Id:   </span>    
					</div>   
					
				 	<input type="number" id="txtId" name="txtId" min="1" max="150">   
				</div>
				   
				<!-- NAME -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblName">Name: </span>    
					</div>   
					
				 	<input type="text" id="txtName" name="txtName">   
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
					<span class="input-group-text" id="lblAge">Age: </span>    
					</div>   
					
				 	<input type="number" id="txtAge" name="txtAge" min="1" max="150">   
				</div>
				
				<!-- CONTACT No -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblContactNo">ContactNo: </span>    
					</div>   
					
				 	<input type="tel" id="ContactNo" name="ContactNo" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}">   
				</div>
				
				<!-- EMAIL -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblEmail">Email: </span>    
					</div>   
					
				 	<input type="email" id="txtEmail" name="txtEmail">   
				</div>
				
				<!-- ADDRESS -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblAddress">Address: </span>    
					</div>   
					
				 	<input type="text" id="txtAddress" name="txtAddress">   
				</div>
				
				<!-- MEDICLE REPORT -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblMedicleReport">Medicle Report: </span>    
					</div>   
					
				 	<input type="text" id="txtMedicleReport" name="txtMedicleReport">   
				</div>
				
				<!-- TIME -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblTime">Time: </span>    
					</div>   
					
				 	<input type="time" id="txtTime" name="txtTime">   
				</div>
				
				<!-- DATE -->   
				<div class="input-group input-group-sm mb-3"> 
					<div class="input-group-prepend">    
					<span class="input-group-text" id="lblDate">Date: </span>    
					</div>   
					
				 	<input type="date" id="txtDate" name="txtDate">   
				</div>
				
				<div id="alertSuccess" class="alert alert-success"></div>   
				<div id="alertError" class="alert alert-danger"></div> 
 
				<input type="button" id="btnSave" value="Save" class="btn btn-primary">  
			</form>  
			
		</div> 
	</div>    
	
	<br>    
	
	<div class="row">  
		<div class="col-12" id="colPatients"></div> 
	</div> 
 
</div>

</body>
</html>