<jsp:include page="menu.jsp" />

<html>

<head>


    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="resources/css/reg.css">
</head>

<body id="grad">
 <form action="saveEmployee" method="post">
    <div class="container register">
        <div class="row">
            <div class="col-md-3 register-left">
                <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
                <h3>Welcome</h3>
                <p>You are 30 seconds away from earning your own money!</p>

            </div>
            
           <form action="saveEmployee" method="post">
                <div class="col-md-9 register-right">

                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <h3 class="register-heading">Add Employee</h3>
                            <div class="row register-form">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Username*" value=""
                                            name="username" />
                                    </div>

                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Password *" value=""
                                            name="password" />
                                    </div>
                                    <div class="form-group">
                                        <select class="form-control" name="department">
                                            <option class="hidden" selected disabled>Please select Department</option>
                                            <option value="IT">IT</option>
                                            <option value="HR">HR</option>
                                            <option value="Marketing">Marketing</option>
                                        </select>
                                    </div>


                                    <div class="form-group">
                                        <div class="maxl">
                                            <label class="radio inline">
                                                <input type="radio" name="gender" value="male" checked>
                                                <span> Male </span>
                                            </label>
                                            <label class="radio inline">
                                                <input type="radio" name="gender" value="female">
                                                <span>Female </span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <select class="form-control" name="role">
                                            <option class="hidden" selected disabled>Please select User role</option>
                                            <option value="Admin">Admin</option>
                                            <option value="Employee">Employee</option>

                                        </select>
                                    </div>


                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="Your Email *" value=""
                                            name="email" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" minlength="10" maxlength="10" 
                                         class="form-control" placeholder="Your Phone *" value="" name="phone" />
                                    </div>
                                    
                                     <div class="form-group">
                                        <input type="text" 
                                         class="form-control" placeholder="Your Salary *" value="" name="salary" />
                                    </div>
                                    
                                    <div class="form-group">
                                        <select class="form-control" name="question">
                                            <option class="hidden" selected disabled>Please select your Sequrity
                                                Question</option>
                                            <option>What is your Birthdate?</option>
                                            <option>What is Your old Phone Number</option>
                                            <option>What is your Pet Name?</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Enter Your Answer *"
                                            value="" name="answer" />
                                    </div>
                                    <input type="submit" class="btnRegister" value="Register" />
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <h3 class="register-heading">Apply as a Hirer</h3>
                            <div class="row register-form">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="First Name *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Last Name *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="Email *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" maxlength="10" minlength="10" class="form-control"
                                            placeholder="Phone *" value="" />
                                    </div>


                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Password *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Confirm Password *"
                                            value="" />
                                    </div>
                                    <div class="form-group">
                                        <select class="form-control">
                                            <option class="hidden" selected disabled>Please select your Sequrity
                                                Question</option>
                                            <option>What is your Birthdate?</option>
                                            <option>What is Your old Phone Number</option>
                                            <option>What is your Pet Name?</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="`Answer *" value="" />
                                    </div>
                                    <input type="submit" class="btnRegister" value="Register" />
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