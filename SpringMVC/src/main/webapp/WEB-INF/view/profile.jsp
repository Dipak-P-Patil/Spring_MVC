<%@page import="com.jbk.entity.Employee"%>
<jsp:include page="menu.jsp" />
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!--Custom styles-->
<link rel="stylesheet" type="text/css" href="resources/css/reg.css">
</head>

<body id="grad">

<%
String msg=(String)request.getAttribute("msg");
if(msg!=null){
	%>
	<script type="text/javascript">

	alert("${msg}")
	</script>
<%	
}
%>

	<form action="updateEmployee" method="post">

		<div class="container register">
			<div class="row">
				<div class="col-md-3 register-left">
					<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
					<h3>Welcome</h3>
					<p>You are 30 seconds away from earning your own money!</p>
				</div>
				<div class="col-md-9 register-right">

					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<h3 class="register-heading">PROFILE</h3>
							<div class="row register-form">
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="EMPLOYEE id *" value="${employee.employeeId}"
											name="EmployeeId" required/ >
									</div>
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="USERNAME *" value="${employee.username}"
											name="username" />
									</div>

									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="PASSWORD *" value="${employee.password}"
											name="password" />
									</div>

									<div class="form-group">
										<select class="form-control" name="department">
											<option value="${employee.department}">${employee.department}</option>
											<option class="hidden" disabled>Please select
												Department</option>
											<option value="IT">IT</option>
											<option value="HR">HR</option>
											<option value="Marketing">Marketing</option>
										</select>
									</div>


									<div class="form-group">
										<div class="maxl">


											<label class="radio inline"> <input type="radio"
												name="gender" value="male" required> <span> Male </span>

											</label> <label class="radio inline"> <input type="radio"
												name="gender" value="female"> <span>Female </span>
											</label>
										</div>
									</div>

									<div class="form-group">
										<select class="form-control" name="role">
											<option value="${employee.role}">${employee.role}</option>

											<option class="hidden" disabled>Please select user
												role</option>
											<option value="Admin">Admin</option>
											<option value="Employee">Employee</option>
										</select>
									</div>

								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="email" class="form-control"
											placeholder="Your Email *" value="${employee.email}" name="email" />
									</div>

									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Your Salary *" value="${employee.salary}" name="salary" />
									</div>

									<div class="form-group">
										<input type="text" minlength="10" maxlength="10"
											class="form-control" placeholder="Your Phone *" value="${employee.phone}"
											name="phone" />
									</div>
									<div class="form-group">
										<select class="form-control" name="question">
											<option value="${employee.question}">${employee.question}</option>

											<option class="hidden" disabled>Please select your
												Security Question</option>
											<option>What is your Birthdate?</option>
											<option>What is Your old Phone Number</option>
											<option>What is your Pet Name?</option>
										</select>
									</div>
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Enter Your Answer *" value="${employee.answer}" name="answer" />
									</div>
									<input type="submit" class="btnRegister" value="Update" />
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>

		</div>
	</form>

</body>
</html>