
<!DOCTYPE html>
<head>
    <title>Payment Form</title>
    <link rel="stylesheet" href="payment_form.css">
</head>
<body>
    <style>
        .back-btn{
            background-color: #233141;
            padding: 10px;
        }
        .back-btn a{
            font-size: larger;
            text-decoration:none;
            color:#fff;
        }
    </style>
<%  
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

        if(session.getAttribute("username") == null){
            response.sendRedirect("index.jsp");
        }
    %>
    <div class="back-btn">
        <a href="student.jsp">Back</a>
    </div>
    <div class="app-container">
       <form action="payment.jsp">
        <div class="bottom-box">
            <button type="button" class="payment-option-btn">Pay with Paypal</button>
            <button type="button" class="payment-option-btn">Pay using Net Banking</button>
            <div class="card-details">
                <p><strong>Pay using Credit or Debit card</strong></p>
                <div class="card-num-field-group">
                    <label>Card Number</label>
                    <br>
                    <input type="text" class="card-num-field-group" placeholder="xxxx-xxxx-xxxx">
                </div>
                <div class="date-field-group">
                    <label>Expiry Date</label>
                    <br>
                    <input type="text" class="date-field" placeholder="mm">
                    <input type="text" class="date-field" placeholder="yyyy">
                </div>
                <div class="cvc-field-group">
                    <label>CVC</label>
                    <br>
                    <input type="password" class="cvc-field" placeholder="xxx">
                   
                </div>
                <div class="name-field-group">
                    <label>Card Holder Name</label>
                    <br>
                    <input type="text" class="name-field" placeholder="Full Name">
                
                </div>
                <div class="date-field-group">
                    <label>Rs</label>
                    <br>
                    <input name="amount" type="number" class="cvc-field" placeholder="2000">
                </div>
               
                <button type="submit" class="pay-btn">Pay Now</button>
            </div>
        </form>
        </div>
    </div>
</body>