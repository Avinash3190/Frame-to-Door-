<%-- 
    Document   : AdminOrderInformation
    Created on : 03-Apr-2024, 11:50:03 pm
    Author     : HP
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Cart"%>
<%@page import="connection.Dbcom"%>
<%@page import="Dao.OrderDao"%>
<%@page import="java.util.List"%>
<%@page import="model.Order"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Registration"%>
<%@page import="java.util.*"%>
<%@page import="Dao.ProductDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	DecimalFormat dcf = new DecimalFormat("#.##");
	request.setAttribute("dcf", dcf);
	Registration auth = (Registration) request.getSession().getAttribute("auth");
	List<Order> orders = null;
	if (auth != null) {
	    request.setAttribute("person", auth);
	    OrderDao orderDao  = new OrderDao(Dbcom.getConnection());
		orders = orderDao.userOrders(auth.getId());

	}
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	if (cart_list != null) {
		request.setAttribute("cart_list", cart_list);
	}
	
    double adminAmountSum = 0.0;
    if(orders != null) {
        for(Order o : orders) {
            
            adminAmountSum += o.getPrice() * 0.10;
        }
    }
	%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Information</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            padding-top: 20px;
            background-color: #f7f7f7;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
        }
        .table {
            margin-top: 20px;
        }
        .table th {
            background-color: #007bff;
            color: white;
        }
        .table thead th {
            vertical-align: bottom;
            border-bottom: 2px solid #dee2e6;
        }
        .table td, .table th {
            padding: .75rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }
        h3 {
        font-size: 24px; /* Adjust this value as needed */
        color: #007bff; /* Example color */
        text-align: center;
        margin-top: 20px;
    }
    </style>
    </head>
    <body>
        <h1>Order Information</h1>
        <div class="container">
           <h3>Total Admin Earnings:  <%= dcf.format( adminAmountSum) %>₹</h3>
                    
                </div>
            <div class="card-header my-3">All Orders</div>
            <table class="table table-light">
                
                <thead>
				<tr>
					<th scope="col">Date</th>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Quantity</th>
					<th scope="col">Price</th>
					<th scope="col">Admin Amount</th>
                                        
				</tr>
			</thead>
                        	<tbody>
			
			<%
			if(orders != null){
				for(Order o:orders){%>
					<tr>
						<td><%=o.getDate() %></td>
						<td><%=o.getName() %></td>
						<td><%=o.getCategory() %></td>
						<td><%=o.getQunatity() %> Kg</td>
						<td><%=dcf.format(o.getPrice()) %>₹</td>
                                                <td><%=dcf.format(o.getPrice()*0.10)%>₹</td>
					</tr>
				<%}
			}
			%>
			
			</tbody>
                        
            </table>
        </div>
                         <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
