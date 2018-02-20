<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel='icon'
	href='https://www.freefavicon.com/freefavicons/objects/tea-time-152-292243.png'
	type='image/x-icon'>
<style type="text/css">
body {
	background-color: gray;
}

input[type="radio"] {
	
}
</style>
<title>Sign-up</title>

</head>
<body>





	<form action="success" onsubmit="return validate();" method="get">
		First Name: <input type="text" name="fName" placeholder="First Name" required><br>
		Last Name: <input type="text" name="lName"placeholder="Last Name" required onchange="validateName()"><br> 
		Email: <input type="email" name="email" placeholder="name@place.com" required onchange="validateEmail()"><br>
		Phone Number: <input type="tel" name="phone" placeholder="123-555-1234" title="ex. XXX-XXX-XXXX or XXXXXXXXXX" required onchange="validateNumber()"><br>
		Password: <input type="password" name="pass" placeholder="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required><br>
		Re-enter Password: <input type="password" onchange="validatePassword();" name="pass" placeholder="password" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required><br>
		<input type="radio" name="gender" value="Male" checked>Male
		<input type="radio" name="gender" value="Female">Female<br>
		
		<input type="radio" name="teaOrCoffee" value="Tea" checked>Tea
		<input type="radio" name="teaOrCoffee" value="Coffee">Coffee<br>
		
		<select name="dropDown">
			<option value="small">Small</option>
			<option value="medium">Medium</option>
			<option value="large">Large</option></select><br>
		
		<input type="checkbox" name="test" value="sugar">Sugar
		<input type="checkbox" name="test" value="cream">Cream
		<input type="checkbox" name="test" value="honey">Honey<br>

		<input type="submit" value="Submit">

	</form>
	The time is <%= new java.util.Date() %>

<script type="text/javascript">
var x = document.querySelectorAll("input");
console.log(x);

function validate(){
	if(validateName() && validateNumber() && validatePassword() && validateEmail()){
		return true;
	} else {
		return false;
	}
	
}
function validateEmail() {
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(x[2].value)) {
    return true;
  } else {
    alert("You have entered an invalid email address!")
    return false;
}
}

function validatePassword(){
	if(x[5].value !== x[4].value){
		alert("Error! Passwords do not match");
		return false;
	} else{
		return true;
	}
}
	 
function validateName() {
    if (x[0].textLength > 2 && x[1].textLength > 2) {
    		return true;
    } else{
	       alert("First and last name must be more than two letters");
	       return false;
    }
    
} 

function validateNumber(){
	var phoneno = /^\d{10}$/;
	var phoneno2 = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
	if(x[3].value.match(phoneno)||(x[3].value.match(phoneno2))){
	      return true;
	      } else {
	      alert("Error: Invalid phone number");
	      return false;
	        }
	}
</script>
</body>
</html>