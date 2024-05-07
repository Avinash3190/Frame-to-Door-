<%-- 
    Document   : searchResults
    Created on : 14-Apr-2024, 3:16:31 pm
    Author     : HP
--%>

<%@page import="connection.Dbcom"%>
<%@page import="Dao.ProductDao"%>
<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search Results</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .product-card {
            margin-bottom: 20px;
        }
    </style>
    </head>
    <body>
      <div class="container">
        <h1 class="mt-4 mb-4">Search Results</h1>
     <%
        String query = request.getParameter("query");
        if (query != null && !query.trim().isEmpty()) {
            ProductDao productDao = new ProductDao(Dbcom.getConnection());
            List<Product> products = productDao.searchProducts(query.trim());
            
            if (products.isEmpty()) {
                out.println("<div class='alert alert-info'>No results found for '" + query + "'.</div>");
                
            } else {
                
                 for (Product p : products) {
               out.println("<div class='col-md-3 my-3'>");
               out.println("<div class='card w-100'>");
               out.println("<img class='card-img-top' src='" + request.getContextPath() + "/img/" + p.getImage() + "' alt='Product Image'>");
               out.println("<div class='card-body'>");
               out.println("<h5 class='card-title'>" + p.getName() + "</h5>");
               out.println("<h6 class='price'>Price: " + p.getPrice() + " Rs</h6>");
               out.println("<h6 class='category'>Category: " + p.getCategory() + "</h6>");
               out.println("<h6 class='Quantity'>Quantity: " + p.getQuantity() + " kg </h6>");
               out.println("<h6 class='Discount'>Discount: " + p.getDiscount() + "% Off</h6>");
               out.println("</div>"); 
               out.println("</div>"); 
               out.println("</div>");

                    
                }
                 
            }
        } else {
            out.println("<p>Please enter a search term.</p>");
        }
    %>
     </div>
    </body>
</html>
