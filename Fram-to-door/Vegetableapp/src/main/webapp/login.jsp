<%-- 
    Document   : login
    Created on : 31-Jan-2024, 5:16:07 pm
    Author     : HP
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Cart"%>
<%@page import="model.Registration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	Registration  auth = (Registration ) request.getSession().getAttribute("auth");
	if (auth != null) {
		response.sendRedirect("welcome.jsp");
	}
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	if (cart_list != null) {
		request.setAttribute("cart_list", cart_list);
	}
	%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login Page</title>
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
        .center-text {
            text-align: center;
            color: black;
            font-size: 28px;
            
            
        }
        form {
            width: 100%;
            max-width: 400px;
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
        a.forget-password, a.new-registration {
            color: #6a11cb;
            text-decoration: none;
            font-size: 0.9em;
        }
        a.forget-password:hover, a.new-registration:hover {
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
        </style>
    </head>
    <body>
     
   
        <form action =NewServlet method="post">        
            <div class="center-text"><b>User Login</b></div>
             
             <label for="name">User ID</label>
             <input type ="text"id="name" placeholder="Enter your UserId" name="name" required> 
              <label for="password">Password</label> 
              <input type ="Password" id="password" placeholder="Enter your Password" name="password" required>
          <button type="submit">Submit</button>  
          <button type="button" onclick="window.close()">Close</button>

                <div style="margin-top: 20px;">
                <a href="newregistration.jsp" class="new-registration">New Registration</a> 
                  <a href="forgotpassword.jsp" class="forget-password">Forget Password?</a>
            </div>
           
             
        </form>
    </body>
</html>
