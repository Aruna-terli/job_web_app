<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Application form</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="{{asset('css/roboto-font.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('fonts/font-awesome-5/css/fontawesome-all.min.css')}}">
   

	<!-- Main Style Css -->
    <link rel="stylesheet" href="{{asset('css/style.css')}}"/>
</head>
<body class="form-v5">
	<div class="page-content">
		<div class="form-v5-content">
			<form class="form-detail" method="post" action="{{route('datastore')}}" >
            @csrf
				<h2>Application Form</h2>
            <div >
                    <h3>Personal Details</h3>
				<div class="form-row">
					<label for="first-name">First Name<span style="color:red">*</span></label>
					<input type="text" name="first_name" id="first-name" class="input-text" value="{{ old('first_name') }}"placeholder="Your First Name" required>
					<i class="fas fa-user"></i>
                    @if ($errors->has('first_name'))
                            <span style="color:red">{{ $errors->first('first_name') }}</span>
                            @endif
				</div>
                <div class="form-row">
					<label for="last-name">Last Name<span style="color:red">*</span></label>
					<input type="text" name="last_name" id="last-name" class="input-text" value="{{ old('last_name') }}"placeholder="Your Last Name" required>
					<i class="fas fa-user"></i>
                    @if ($errors->has('last_name'))
                            <span style="color:red">{{ $errors->first('last_name') }}</span>
                            @endif
				</div>
 <div class="form-row">
    <label for="gender">Gender<span style="color:red">*</span></label>
    <div class="custom-dropdown">
        <select id="gender" name="gender" required>
            <option value="" disabled selected>Select your gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
        </select>
        <i class="fa fa-chevron-down" aria-hidden="true"></i>
    </div>
    @if ($errors->has('gender'))
                            <span style="color:red">{{ $errors->first('gender') }}</span>
                            @endif
</div>
                <div class="form-row">
					<label for="full-name">DOB<span style="color:red">*</span></label>
					<input type="text" name="dob" id="dob" class="input-text" value="{{ old('dob') }}" placeholder="DD/MM/YYYY" required>
					<i class="fas fa-calendar-alt"></i>
                    @if ($errors->has('dob'))
                            <span style="color:red">{{ $errors->first('dob') }}</span>
                            @endif
				</div>
				<div class="form-row">
					<label for="your-email">Email<span style="color:red">*</span></label>
					<input type="text" name="email" id="email" class="input-text" value="{{ old('email') }}" placeholder="Your Email" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
					<i class="fas fa-envelope"></i>
                    @if ($errors->has('email'))
                            <span style="color:red">{{ $errors->first('email') }}</span>
                            @endif
                    
				</div>
				<div class="form-row">
					<label for="phone_no">Contact Number<span style="color:red">*</span></label>
					<input type="text" name="phone_no" id="phone_no" class="input-text" value="{{ old('phone_no') }}" placeholder="Your Contact Number" required>
					<i class="fa fa-phone"></i>
                    @if ($errors->has('phone_no'))
                            <span style="color:red">{{ $errors->first('phone_no') }}</span>
                            @endif
			  </div>
                
              </div>
                  <h3>Professional Details</h3>
<div class="form-row">
    <label for="qualification">Higher Qualification<span style="color:red">*</span></label>
    <div class="custom-dropdown">
        <select name="qualification" id="qualification"  required>
            <option value="" disabled selected>Select your qualification</option>
            <option value="M.Tech">M.Tech</option>
            <option value="B.Tech">B.Tech</option>
            <option value="BSc">BSc</option>
            <option value="MSc">MSc</option>
            <option value="BCom">BCom</option>
        </select>
        <i class="fa fa-chevron-down" aria-hidden="true"></i>
        </div>
                        @if ($errors->has('qualification'))
                            <span style="color:red">{{ $errors->first('qualification') }}</span>
                            @endif
   
</div>
                <div class="form-row">
					<label for="experience">Total Experience<span style="color:red">*</span></label>
					<input type="text" name="total_exp" id="total_exp" class="input-text" value="{{ old('total_exp') }}" placeholder="Your Total Experience" required>
					<i class="fas fa-briefcase"></i>
                    @if ($errors->has('total_exp'))
                            <span style="color:red">{{ $errors->first('total_exp') }}</span>
                            @endif
				</div>
                <div class="form-row">
               
    <label for="roles">Roles<span style="color:red">*</span></label>
    <div class="custom-dropdown">
        <select name="roles" id="roles"  required onchange="updateSkills()">
            <option value="" disabled selected>Select your role</option>
            <option value="1">Designer</option>
            <option value="2">Developer</option>
            <option value="3">Tester</option>
        </select>
        <i class="fa fa-chevron-down" aria-hidden="true"></i>
        @if ($errors->has('roles'))
                            <span style="color:red">{{ $errors->first('roles') }}</span>
                            @endif
    </div>
</div>
<div id="skillslabel">
        <label>Skills<span style="color:red">*</span></label>
   </div>
<div id="checkbox-container">
   
    <!-- Checkboxes will be added here dynamically -->
    @if ($errors->has('skills'))
      <span style="color:red">{{ $errors->first('skills') }}</span>
    @endif
    
</div>

               
				<div class="form-row-last">
					<input type="submit" name="register" class="register" value="Register">
				</div>
			</form>
		</div>
	</div>
</body>
</html>
<script>
document.addEventListener('DOMContentLoaded', function() {
    var roleSelect = document.getElementById("roles");
    var checkboxContainer = document.getElementById("checkbox-container");

    roleSelect.addEventListener('change', updateSkills);

    function updateSkills() {
        var selectedRole = roleSelect.value;
        var skillsByRole = {
            '1': ["Photoshop", "Illustrator", "Figma"],
            '2': ["HTML", "Laravel", "Node.js"],
            '3': ["Selenium", "JMeter", "Cucumber"]
        };

        checkboxContainer.innerHTML = ''; // Clear previous checkboxes

        if (selectedRole !== "") {
            var skills = skillsByRole[selectedRole];
           
            skills.forEach(function(skill, index) { // Notice the 'index' parameter here
                var checkboxDiv = document.createElement("div");
                checkboxDiv.className = "custom-checkbox";

                var checkbox = document.createElement("input");
                checkbox.type = "checkbox";
                checkbox.name = "skills[]";
                checkbox.value = index +1; // Use the index as the value for the checkbox
                checkbox.id = "skill-" + index; // Create a unique ID using the index

                var label = document.createElement("label");
                label.htmlFor = "skill-" + index;
                label.textContent = skill;

                checkboxDiv.appendChild(checkbox);
                checkboxDiv.appendChild(label);

                checkboxContainer.appendChild(checkboxDiv);
            });
        }
    }
});


        function disableBack() { window.history.forward(); }
        setTimeout("disableBack()", 0);
        window.onunload = function () { null };




</script>