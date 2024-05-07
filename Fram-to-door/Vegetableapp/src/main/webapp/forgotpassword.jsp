<%-- 
    Document   : forgetpassword
    Created on : 14-Apr-2024, 10:39:33 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget Password</title>
         <style>
       body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(to right, #6a11cb, #2575fc);
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.center-text {
    text-align: center;
    color: black;
    font-size: 28px;
    font-weight: bold; /* Enhance visibility */
}

form {
    width: calc(100% - 40px); /* Responsive width */
    max-width: 400px;
    background-color: #ffffff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Slightly darker shadow for better depth */
    text-align: center;
}

label {
    margin-bottom: 0.5em;
    color: #333;
    display: block;
    font-weight: 500;
}

input[type="text"],
input[type="password"],
input[type="number"] {
    width: 100%;
    padding: 12px 20px;
    margin-bottom: 20px;
    border: 2px solid #ccc; /* Thicker border for better focus */
    border-radius: 5px;
    box-sizing: border-box;
    transition: all 0.3s; /* Smooth transitions */
}

input[type="text"]:focus,
input[type="password"]:focus,
input[type="number"]:focus {
    border-color: #2575fc;
    box-shadow: 0 0 8px rgba(50, 150, 250, 0.5);
    background-color: #f0f8ff; /* Subtle background color on focus */
}

button {
    width: 100%;
    padding: 12px 20px;
    background-color: #6a11cb;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    margin-top: 10px;
    transition: background-color 0.3s; /* Smooth transition for hover effect */
}

button:hover {
    background-color: #5a01b1;
}

@media (max-width: 600px) {
    form {
        width: 90%; /* More responsive for smaller devices */
        padding: 20px;
    }
}

        </style>
    </head>
    <body>
         <form action =ForgotPasswordServlet method="post">       
             <div class="center-text"><b>Forget Password</b></div>
             
             <label for="name"> Mobile number</label>
             <input type ="number"id="number" placeholder="Enter your number" name="mobile_number" required> 
             <label for="name"> New User ID</label>
             <input type ="text"id="name" placeholder="Enter your New UserId" name="newUserId" required> 
              <label for="password"> New Password</label> 
              <input type ="Password" id="password" placeholder="Enter your New Password" name="newpassword" required>
          <button type="submit">Submit</button>  
          <button type="button" onclick="window.close()">Close</button>

                
        </form>
    </body>
</html>
