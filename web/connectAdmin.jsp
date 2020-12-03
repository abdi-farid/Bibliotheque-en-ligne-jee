<html>
    <head>
        <title>Admin Login</title>
        <%@include file="head.jsp" %>
    </head>
    <body style="margin-top: 10%;">
        <!-- include header file -->
        <%@include file="header.jsp" %>
        
        <!-- Form admin login -->  
        
    <center>
        <div class="card w-25" style="margin-top: 5%;
             box-shadow: 10px 20px 30px 0px;">
            
            <!-- card header-->
            <div class="card-header text-lg-center bg-dark text-light">
                <b>ADMIN CONNECTION</b>
            </div>
            
            <!-- card body -->
            <div class="card-body">
                
                <form method="post" action="admin">
                    <div class="row" style="margin-top: 5%;">
                        <!-- admin login -->
                        <div class="col">      
                            <input type="text" class="form-control text-center" name="login" placeholder="Login" required
                                   style="box-shadow: 2px 4px 6px 0px;">
                        </div>
                    </div>
                    
                    <div class="row" style="margin-top: 5%;">
                        <!-- admin password -->
                        <div class="col">
                            <input type="password" class="form-control text-center" name="password" placeholder="Password" required 
                                   style="box-shadow: 2px 4px 6px 0px;">
                        </div>
                    </div>
                                        
                    <div class="row" style="margin-top: 5%;">
                        
                        <!-- Add button -->
                        <div class="col">
                            <button class="form-control btn btn-success active" type="submit"><b>LOGIN</b></button>
                        </div>
                        
                    </div>
                    
                </form>
                
            </div><!-- end of card body -->
            
        </div><!-- end of card -->
    </center>
        
    <!-- login or password error -->
        <c:if test="${!empty loginerr}">
            <div class="alert alert-warning text-center" role="alert" style="margin-top: 3%;">
                ${loginerr}
            </div>
        </c:if>
        <c:if test="${!empty passerr}">
            <div class="alert alert-warning text-center" role="alert" style="margin-top: 3%;">
                ${passerr}
            </div>
        </c:if>
        
        
        <!-- include foot script  -->
        <%@include file="foot.jsp" %>
    </body>
</html>
