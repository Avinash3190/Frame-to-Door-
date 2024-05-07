<%-- 
    Document   : FramerLogin
    Created on : 06-Feb-2024, 11:34:09 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
       body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                background: linear-gradient(to right, #6a11cb, #2575fc);
            }
            h1 {
                color: #fff;
                font-size: 24px;
            }
            form {
                width: 350px;
                max-width: 600px;
                background-color: #ffffff;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                text-align: center;
            }
            label {
                margin-bottom: 0.5em;
                color: #333;
                display: block;
                font-weight: 500;
            }
            input[type="text"],
            input[type="password"] {
                width: 100%;
                padding: 12px 20px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;
            }
            input[type="text"]:focus,
            input[type="password"]:focus {
                border-color: #2575fc;
                box-shadow: 0 0 8px rgba(50, 150, 250, 0.5);
            }
            a.forget-password {
                color: #6a11cb;
                text-decoration: none;
                font-size: 0.9em;
            }
            a.forget-password:hover {
                text-decoration: underline;
            }
            button {
                width: 100%;
                padding: 12px 20px;
                background-color: #6a11cb;
                color: #ffffff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                margin-top: 10px;
            }
            button:hover {
                background-color: #5a01b1;
            }
            .center-text {
            text-align: center;
            color: black;
            font-size: 28px;
            
            
        }
    </style>
    </head>
    <body>
       
       <div class="form-container">
          
        <form action =FramerLoginServlet method="post">
            <div class="center-text"><b>Farmer Login Page </b></div>
                
                 <label for="name">User ID</label>
                <input type ="text"id="name" placeholder="Enter your UserId" name="name" ><br>
                
                <label for="password">Password</label> 
                <input type ="Password"id="password"  placeholder="Enter your Password" name="password"><br>
               <button type="submit">Login</button>  
          <button type="button" onclick="window.close()">Close</button>
            <div style="margin-top: 20px;">
                
                  <a href="forgotpassword.jsp" class="forget-password">Forget Password?</a>
            </div>
                
           
        </form>
   
    </body>
</html>
