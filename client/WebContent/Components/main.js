$(document).ready(function()
{
$("#alertSuccess").hide();
$("#alertError").hide();
});

$(function(){
	var $patient =$('#patient');
	var $id =$('#id');
	var $name =$('#name');
	var $gender =$('input[name="rdoGender"]:checked');
	var $age =$('#age');
	var $medicleReport =$('#medicleReport');
	var $contactNo =$('#contactNo');
	var $email =$('#email');
	var $address =$('#address');
	var $time =$('#time');
	var $date =$('#date');
	
	$.ajax({
		
		type:'GET',
		url:'http://localhost:8080/doctorAPI/webapi/patient',
		success:function(patient){
			$.each(patient,function(i,patient){
				$patient.append('<li><div class="student card bg-light m-2\" style=\"width: 12rem;float: left;">Id:<span class="noedit id">'+patient.id
																																				  +'</span><input class="edit id"/><br>Name:<span class="noedit name">'
																																				  +patient.name
																																				  +'</span><input class="edit name"/> <br>Gender:<span class="noedit gender">'
																																				  +patient.gender
																																				  +'</span><input class="edit gender"/> <br>Age:<span class="noedit age">'
																																				  +patient.age
																																				  +'</span><input class="edit age"/> <br>Medical Report:<span class="noedit medicleReport">'
																																				  +patient.medicleReport
																																				  +'</span><input class="edit medicleReport"/> <br>ContactNo:<span class="noedit contactNo">'
																																				  +patient.contactNo
																																				  +'</span><input class="edit contactNo"/> <br>Email:<span class="noedit email">'
																																				  +patient.email
																																				  +'</span><input class="edit email"/> <br>Address:<span class="noedit address">'
																																				  +patient.address
																																				  +'</span><input class="edit address"/> <br>Time:<span class="noedit time">'
																																				  +patient.time
																																				  +'</span><input class="edit time"/> <br>Date:<span class="noedit date">'
																																				  +patient.date
																																				  +'</span><input class="edit date"/><input type="button" id="'
																																				  +patient.id
																																				  +'" value="Remove" class="btn btn-danger remove"><input type="button" " value="Edit" class="editapp noedit"><input type="button" " value="Save" class="saveedit edit"><input type="button" " value="Cancel" class="canceledit edit"></li>');
																																				
				
			});
			
		},
		error:function(){
			alert('error loading patient details');
		}
			
		
	});
	
	$('#btnSave').on('click',function(){
		$("#alertSuccess").text("");
		$("#alertSuccess").hide();
		$("#alertError").text("");
		$("#alertError").hide();
		
		
		var patient ={
				id: $id.val(),
				name: $name.val(),
				gender: $('input[name="rdoGender"]:checked').val(),
				age: $age.val(),
				medicleReport: $medicleReport.val(),
				contactNo: $contactNo.val(),
				email: $email.val(),
				address: $address.val(),
		        time: $time.val(),
		        date: $date.val(),
		        
		        
		};
		var status = validatePatientForm();
		// If not valid-------------------
		if (status != true)
		{
		$("#alertError").text(status);
		$("#alertError").show();
		return;
		}
		
	
		$.ajax({
			headers:{
				'Accept':'application/json',
				'Content-Type':'application/json'
				
			},
			type: 'POST',
			url: 'http://localhost:8080/doctorAPI/webapi/patient',
			data: JSON.stringify(patient),
			dataType:"json",
			
			success: function(newPatient){
				$patient.append('<li><div class="student card bg-light m-2\" style=\"width: 12rem;float: left;">ID:<span class="noedit id">'+newpatient.id
						  																														+'</span><input class="edit id"/><br>Name:<span class="noedit name">'
						  																														+newpatient.name
						  																														+'</span><input class="edit name"/> <br>Gender:<span class="noedit gender">'
						  																														+newpatient.gender
						  																														+'</span><input class="edit gender"/> <br>Age:<span class="noedit age">'
						  																														+newpatient.age
						  																														+'</span><input class="edit age"/> <br>MedicleReport:<span class="noedit medicleReport">'
						  																														+newpatient.medicleReport
						  																														+'</span><input class="edit medicleReport"/> <br>ContactNo:<span class="noedit contactNo">'
						  																														+newpatient.contactNo
						  																														+'</span><input class="edit contactNo"/> <br>Email:<span class="noedit email">'
						  																														+newpatient.email
						  																														+'</span><input class="edit email"/> <br>Address:<span class="noedit address">'
						  																														+newpatient.address
						  																														+'</span><input class="edit address"/> <br>Time:<span class="noedit time">'
						  																														+newpatient.time
						  																														+'</span><input class="edit time"/> <br>Date:<span class="noedit date">'
						  																														+newpatient.date
						  																														+'</span><input class="edit date"/><input type="button" id="'
						  																														+newpatient.id
						  																														+'" value="Remove" class="btn btn-danger remove"><input type="button" " value="Edit" class="editapp noedit"><input type="button" " value="Save" class="saveedit edit"><input type="button" " value="Cancel" class="canceledit edit"></li>');
																																				  
				$("#alertSuccess").text("Saved successfully.");
				$("#alertSuccess").show();
				$("#formPatient")[0].reset();
			},
			error:function(){
				var status = validatePatientForm();
				// If not valid-------------------
				if (status != true)
				{
				$("#alertError").text(status);
				$("#alertError").show();
				
				
				}
				
			}
		
			
			
		});
		
		function validatePatientForm()
		{
			
		// ID  
		
		if ($id.val().trim() == "")  
		{   
			return "Insert patient id.";  
		} 
		 
		//NAME
		
		if ($name.val().trim() == "")  
		{   
			return "Insert patient name.";  
			
		} 
		
		// GENDER  
		
		if ($('input[name="rdoGender"]:checked').length === 0)  
		{   
			return "Select gender.";  
		} 
		 
		//AGE
		
		if ($age.val().trim() == "")  
		{   
			return "Insert patient age.";  
			
		} 
		
		//MEDICLE REPORT
		
		if ($medicleReport.val().trim() == "")  
		{   
			return "Insert patient health status.";  
			
		} 
		
		//CONTACT NO.
		
		if ($contactNo.val().trim() == "")  
		{   
			return "Insert patient Contact number.";  
			
		} 
		
		//EMAIL
		
		if ($email.val().trim() == "")  
		{   
			return "Insert patient email.";  
			
		} 
		

		//ADDRESS
		
		if ($address.val().trim() == "")  
		{   
			return "Insert patient address.";  
			
		} 
		

		//TIME
		
		if ($time.val().trim() == "")  
		{   
			return "Insert time.";  
			
		} 
		
		
		 // DATE
		
		if ($date.val().trim() == "")  
		{   
			return "Insert date.";  
			
		} 
		 
		 return true; 
		 
	}
		
		
	});
	
	$patient.delegate('.remove','click',function(){
		var $li=$(this).closest('li');
		$.ajax({
			type:'DELETE',
			url:'http://localhost:8080/doctorAPI/webapi/patient/'+$(this).attr('id'),
			success: function(){
				$li.fadeOut(300,function(){
					$(this).remove();
					
				})
				
			}
		});
	});
	$patient.delegate('.editapp','click',function(){
		var $li=$(this).closest('li');
		$li.find('input.id').val($li.find('span.id').html());
		$li.find('input.name').val($li.find('span.name').html());
		$li.find('input.gender').val($li.find('span.gender').html());
		$li.find('input.age').val($li.find('span.age').html());
		$li.find('input.medicleReport').val($li.find('span.medicleReport').html());
		$li.find('input.contactNo').val($li.find('span.contactNo').html());
		$li.find('input.email').val($li.find('span.email').html());
		$li.find('input.address').val($li.find('span.address').html());
		$li.find('input.time').val($li.find('span.time').html());
		$li.find('input.date').val($li.find('span.date').html());
		$li.addClass('edit');
	});
	$patient.delegate('.canceledit','click',function(){
		$(this).closest('li').removeClass('edit');
		
	});
	$patient.delegate('.saveedit','click',function(){
		var $li=$(this).closest('li');
		var patient={
				id: $li.find('input.id').val(),
				name: $li.find('input.name').val(),
				gender: $li.find('input.gender').val(),
				age: $li.find('input.age').val(),
				medicleReport: $li.find('input.medicleReport').val(),
				contactNo: $li.find('input.contactNo').val(),
		        email: $li.find('input.email').val(),
		        address: $li.find('input.address').val(),
		        time: $li.find('input.time').val(),
		        date: $li.find('input.date').val()
				
		};
		
		$.ajax({
			headers:{
				'Accept':'application/json',
				'Content-Type':'application/json'
					
					
			},
			type: 'PUT',
			url: 'http://localhost:8080/doctorAPI/webapi/patient/update',
			data: patient,
			data: JSON.stringify(patient),
			dataType:"json",
			
			success: function(newPatient){
				$li.find('span.id').html(patient.id);
				$li.find('span.name').html(patient.name);
				$li.find('span.gender').html(patient.gender);
				$li.find('span.age').html(patient.age);
				$li.find('span.medicleReport').html(patient.medicleReport);
				$li.find('span.contactNo').html(patient.contactNo);
				$li.find('span.email').html(patient.email);
				$li.find('span.address').html(patient.address);
				$li.find('span.time').html(patient.time);
				$li.find('span.date').html(patient.date);
				$li.removeClass('edit');
				},
		
				error: function(){
				alert('error add patient');
			}
			
		});
	});
});




