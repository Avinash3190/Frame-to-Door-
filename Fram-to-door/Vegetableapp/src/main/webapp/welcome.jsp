<%-- 
    Document   : welcome
    Created on : 31-Jan-2024, 7:48:14 pm
    Author     : HP
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Cart"%>
<%@page import="Helper.helper"%>
<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page import="connection.Dbcom"%>
<%@page import="model.Registration"%>
<%@page import="Dao.ProductDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  Registration auth = (Registration) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
  
}
//ProductDao pd = new ProductDao(Dbcom.getConnection());
ProductDao pd = new ProductDao(Dbcom.getConnection());
List<Product> products = pd.getAllProducts();

ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   
    </head>
    <body>
            
     
        <div class = "navbar">
              <a href="#" class="logo"><i class="fa fa-shopping-basket" aria-hidden="true"> FARM-2-DOOR</i></a>
            <nav class="navbar1">
                <a href="welcome.jsp"> Home </a>               
                <a href="Orders.jsp"> orders </a>
                <a href="">Contact</a>
                <a href="">About</a>
                
            </nav>
            <div class="icons">
                <a href="javascript:void(0);" class="fa fa-bars" id="menu-btn"></a>
                                <div id="menu-list" class="menu-list" style="display: none;">
                                        <ul>
                                           
                                           <li><a href="AdminLogin.jsp">Admin</a></li>
                                         <li><a href="FramerRegistration.jsp"> FarmerRegistration </a></li>
                                         <li><a href="FramerLogin.jsp">FarmerLogin</a></li>
                                         
                                   </ul>
                              </div>   
                
                <a href="javascript:void(0);" class="fa fa-search" id="search-btn"></a>
                <a href="Cart.jsp" class="fa fa-shopping-cart" id="shopping-cart-btn"></a>
                <button class="logb" onclick="moveNext()"><div class="fa fa-user" id="login-btn"></div></button>
            </div>
            <form class="search-form" action="searchResults.jsp" method="GET" style="display:none;">
            <input type="search" id="search-box" name="query" placeholder="Search Here...." style="border: none;">
            <label for="search-box" class="fa fa-search"></label>
            
            
        </form>
              
        </div>
          
          <div class="container">
              <div class="card-header my-3"> All Product</div>
              <div class="row">
                  <%
                  if (!products.isEmpty()) {
				for (Product p : products) {
                           
                    
                         %>
			<div class="col-md-3 my-3">
				<div class="card w-100">
			<img class="card-img-top" src="<%=request.getContextPath()%>/img/<%=p.getImage()%>" alt="Card image cap">

                            	
                                 <div class="card-body">
						<h5 class="card-title"><%=p.getName() %></h5>
                                         
						<h6 class="price">Price: <%=p.getPrice() %>Rs</h6>                                            
						<h6 class="category">Category: <%=p.getCategory() %></h6>
                                                  
                                                <h6 class="Discount">discount:<%=p.getDiscount()%>% Off</h6>
                                              
						 <div class="mt-3">
							<a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a>
                                                        
                                                       <a class="btn btn-primary" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
						</div>
					
				
			</div>
                                                </div>
                                       </div>         
			<%
                      }
                  
                  }else {
			out.println("There is no proucts");
			}
                  
                  
                  %>     
              </div>
              
          </div>
          
        </div>
        
             <script>
        
        
        window.onload = function() {
        document.getElementById('menu-btn').addEventListener('click', function() {
            var menu = document.getElementById('menu-list');
            if (menu.style.display === 'block') {
                menu.style.display = 'none';
            } else {
                menu.style.display = 'block';
            }
        });

        // Unified search button toggle event
        document.getElementById('search-btn').addEventListener('click', function() {
            var searchForm = document.querySelector('.search-form');
            searchForm.style.display = searchForm.style.display === 'none' ? 'flex' : 'none';
            if (searchForm.style.display === 'flex') {
                document.getElementById('search-box').focus(); // Focus on the search box when the form is shown
            }
        });
    };

        function moveNext() {
            
            window.location.href = 'login.jsp'; 
        }
        
        
    </script>

    <style>
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid black;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .4);
            background-color: #f8f9fa; 
            padding: 10px 0; 
        }
        .navbar a, .search-form button {
            margin: 0 10px; 
            color: black;
            text-decoration: none;
            transition: color 0.3s;
        }
        .navbar a:hover, .search-form button:hover {
            color: blue;
        }
        .icons .fa {
            font-size: 24px; /* Increased size from 20px to 24px */
        cursor: pointer;
        }
        .search-form {
            display: none; /* Initial state is hidden */
            justify-content: center;
            align-items: center;
        }
        #search-box {
            padding: 5px 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
      
     .card {
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: box-shadow 0.3s, transform 0.3s; 
        height: 100%;
    }
    .card:hover {
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); 
        transform: translateY(-5px); 
    }
    .col-md-3 {
                display: flex; 
                flex-direction: column; 
            }
            .col-md-3 .card {
                flex: 1; 
            }
            #menu-list {
    list-style: none;
    margin: 0;
    padding: 0;
    background: white;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    position: absolute;
    width: 200px;
    display: none; /* Default to hidden */
}

#menu-list ul li a {
    display: block;
    padding: 10px;
    text-decoration: none;
    color: black;
    border-bottom: 1px solid #ccc;
}

#menu-list ul li a:hover {
    background-color: #f2f2f2;
}

#menu-list ul li:last-child a {
    border-bottom: none;
}
.card-img-top {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

    </style>
    
    </body>
    
</html>
