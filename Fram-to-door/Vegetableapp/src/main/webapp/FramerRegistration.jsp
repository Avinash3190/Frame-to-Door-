<%-- 
    Document   : FramerRegistration
    Created on : 05-Feb-2024, 1:44:44 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Framer Registration </title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
         label {
        color: black; /* Set label text to black */
    }
            body {
                background: linear-gradient(to right, #6a11cb 0%, #2575fc 100%); 
                color: #fff; 
                font-family: Arial, sans-serif;
            }
            .form-container {
                max-width: 500px;
                margin: 50px auto;
                padding: 20px;
                background-color: rgba(255, 255, 255, 0.9); 
                border-radius: 10px;
                box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3); 
            }
            .form-container h1 {
                color: black; 
            }
            .form-control {
                background-color: rgba(255, 255, 255, 0.8);
                border: none;
                box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1); 
            }
            .button-container button {
                width: 150px; 
                box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2); 
            }
            .btn-primary {
                background-color: #6a11cb; 
                border: none;
            }
            .btn-secondary {
                background-color: #555; 
                border: none;
            }
            mt-3 text-center{
                color: black;
            }
    </style>
    </head>
    <body>
        <div class="container">
    <div class="form-container">
        <h1>Farmer Registration</h1>
        <div>
        <form action =FramerRegistrationServlet method="post">
            
                
        <div class="form-group">
                <label for="Full_name">Full Name:</label>    
          <input type ="text" class="form-control" id="Full_name" placeholder="Enter your Name" name="Full_name" required>
        </div>
            <div class="form-group">
                <label for="Email">Email:</label>  
           <input type ="Email" class="form-control" id="Email" placeholder="Enter your Email" name="Email" required> 
            </div>
            
          <div class="form-group">
                <label for="mobile_no">Mobile No:</label> 
           <input type ="text" class="form-control" id="mobile_no" placeholder="Enter your Mobile No" name="mobile_no" required>
          </div>
            
       <div class="form-group">
                <label for="Country">Country:</label> 
          <select class="form-control" id="Country" name="Country"  required>   
          <option value="" selected="Country">Country</option>
                <option value="" selected disabled>Country</option>
                    <option value="America">America</option>
                    <option value="India">India</option>
                    <option value="Russia">Russia</option>
                    <option value="Iran">Iran</option>
                 </select> 
       </div>
            
  <div class="form-group">
                <label for="address">Address:</label>
            <input type ="text" class="form-control" id="address" placeholder="Enter your Address" name="address"required ><br>
  </div>
            
     <div class="form-group">
                <label for="pin_code">Pin Code:</label>
         <input type =" Number" class="form-control" id="pin_code" placeholder="Enter Pin No" name ="pin_code"required>
     </div>
       <div class="form-group">
                <label for="UserId"> UserId:</label> 
            <input type ="text" class="form-control" id="UserId" placeholder="create your UserId" name="UserId"required >
       </div>
            <div class="form-group">
                <label for="password">Password:</label>
            <input type ="Password" class="form-control" id="password" placeholder="Enter your Password" name="password" required> 
            </div>
            
            <div class="form-group">
                <label for="conform_password">Confirm Password:</label>
            <input type ="Password"class="form-control" id="conform_password" placeholder="conform Password" name="conform_password" required> <br>
            </div>
            <div class="button-container">
              <button type="submit" class="btn btn-primary">Submit</button>
              <button type="button" class="btn btn-secondary" onclick="window.close();">Close</button>
            </div>                      
                                           
        </form>    
            <p class="mt-3 text-center">Already have an account? <a href="FramerLogin.jsp">Login</a></p>
        </div>
    </div>
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
