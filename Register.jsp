<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*,java.util.*,java.lang.*,java.io. *"%>

<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CVMaker - SignUp</title>
        <link rel="stylesheet" href="./css/all.css">
        <link rel="stylesheet" href="./css/bootstrap.css">
        <link rel="stylesheet" href="./css/style.css">
    </head>
    <body>
        
        <div class="register-page">
            <div class="row register-card bg-white">
                <div class="col-lg-6 col-style form-section">
                    <form class="form" method="post">
                        <div class="title">Sign Up</div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="txtName" name="Name" placeholder="Name">
                            <span class="help-text text-danger" id="helpName"></span>
                         </div>
                         <div class="form-group">
                             <input type="email" class="form-control" id="txtEmail" name="Email" placeholder="Email">
                             <span class="help-text" id="helpEmail"></span>
                         </div>
                         <div class="form-group">
                             <input type="password" class="form-control" id="txtPassword" name="userpassWord" placeholder="Password">
                             <span class="help-text" id="helpPassword"></span>
                         </div>
                         <div class="form-group">
                             <input type="password" class="form-control" id="txtConfirmPassword" name="CPassword" placeholder="Confirm Password">
                             <span class="help-text" id="helpConfirmPassword"></span>
                         </div>
                         <button class="button btn-block" type="submit" id="btnSubmit">Sign Up</button>
                        </form>
                </div>
                <div class="col-lg-6 col-style title-section">
                    <h1 class="app-title1">CV</h1>
                    <h3 class="app-title2">MAKER</h3>
                </div>
            </div>
          
        </div>
        <script type="text/javascript" src="./JS/Jquery.js"></script>
        <script type="text/javascript" src="./JS/bootstrap.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#btnSubmit").click(function(){
                    return Validate();
                });
            });
            function Validate()
            {
                var pattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
                var name = $("#txtName").val();
                var email = $("#txtEmail").val();
                var password = $("#txtPassword").val();
                var confirmpassword= $("#txtConfirmPassword").val();
                var helpName = document.getElementById('helpName');//$("#helpName");
                var helpEmail = document.getElementById('helpEmail');//$("#helpEmail");
                var helpPassword = document.getElementById('helpPassword');//$("#helpPassword");
                var helpConfirmPassword = document.getElementById('helpConfirmPassword');//$("#helpConfirmPassword");
                var isValid = true;
                helpName.textContent = "";
                helpEmail.textContent = "";
                helpPassword.textContent = "";
                helpConfirmPassword.textContent = "";
    
                if(name == null || name == '' || name == undefined)
                {
                    //$("#helpName").text("Please enter a name");
                    helpName.textContent = "Please enter a name";
                    isValid = false;
                }
                if(email == null || email == '' || email == undefined)
                {
                    helpEmail.textContent = "Please enter a email";
                    isValid = false;
                }
                if(password == null || password == '' || password == undefined)
                {
                    helpPassword.textContent = "Please enter a password";
                    isValid = false;
                }
                if(confirmpassword == null || confirmpassword == '' || confirmpassword == undefined)
                {
                    helpConfirmPassword.textContent = "Please enter a confirm password";
                    isValid = false;
                }
                if(isValid)
                {
                    if(name.length > 200){
                        helpName.textContent += "Your name is too long please try to make it short.";
                        isValid = false;
                    }
                    if(email.length > 200){
                        helpEmail.textContent += "<br>Your email is too long please try to make it short.";
                        isValid = false;
                    }
                    if(password.length < 8 || password.length > 200){
                        helpPassword.textContent += "Password must be minimum 8 characters and maximum 200 characters long.";
                        isValid = false;
                    }
                    if(confirmpassword.length > 200){
                        helpConfirmPassword.textContent += "Confirm Password must be minimum 8 characters and maximum 200 characters long.";
                        isValid = false;
                    }
                    if(!email.match(pattern)){
                        helpEmail.textContent += "Please insert a valid gmail.";
                        isValid = false;
                    }
                    if(password != confirmpassword)
                    {
                        helpConfirmPassword.textContent += "Both passwords must be same.";
                        isValid = false;
                    }
                }
                return isValid;
            }
        </script>
    </body>
</html>