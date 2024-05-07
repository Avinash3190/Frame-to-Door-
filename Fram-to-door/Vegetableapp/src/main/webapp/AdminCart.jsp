<%-- 
    Document   : Admin
    Created on : 19-Mar-2024, 1:10:58 am
    Author     : HP
--%>
<%@page import="model.Product"%>
<%@page import="Dao.ProductDao"%>
<%@page import="Helper.helper"%>
<%@page import="java.util.List"%>
<%@page import="connection.Dbcom"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
ProductDao pd = new ProductDao(Dbcom.getConnection()) ;
List<Product> Products = pd.getAllProducts();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Product</title>
         <style>
        
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 1200px;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        img {
            max-width: 100px;
            height: auto;
        }
        a {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
   

        
    </style>
    </head>
           
    <body>
        <h1>Product Information</h1>
        <div class ="container my-3">
            <table class="table table-light">
                <thead>
                    <tr>
                        
                        <th scope ="col">image</th>
                        <th scope="col">Name</th>
                        <th scope="col">Category</th>
                        <th scope="col">Price</th>
                        <th scope="col">Quantity</th>
                       <th scope="col">Discount</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                      if(Products != null){
                       for(Product p:Products){%>
                        
                       <tr>
                 
                           <td>   <img class="card-img-top" src="<%=request.getContextPath()%>/img/<%=p.getImage()%>" alt="Card image cap">	</td>
                           <td><%=p.getName()%></td>
                           <td><%=p.getCategory()%></td>
                           <td><%=p.getPrice()%>Rs</td>
                           <td><%=p.getQuantity()%>Kg</td>
                           <td><%=p.getDiscount()%>%</td>
                                                   
                       </tr>
                         
                       
                       <%}
                      
                      }
                    
                    %>
                </tbody>
            </table>
            <a href="OrderInformation.jsp">Order Information</a>
        </div>      
               
    </body>
</html>
