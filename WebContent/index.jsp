<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    
    <!-- Latest compiled and minified CSS & JS -->
    <link rel="stylesheet" media="screen" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/a.css">
  <link rel="stylesheet" href="css/font-awesome.css">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

    <style>
    body{
    background-image: url('https://raw.githubusercontent.com/ThaoLe1998/Gtnm_QuanLyNhom/master/WebContent/images/nen1.jpg');
   
}
#trai{
    background-image: url('https://raw.githubusercontent.com/ThaoLe1998/Gtnm_QuanLyNhom/master/WebContent/images/nentrai1.jpg');
   
  
}
    
    </style>
            <link rel="icon" href="https://raw.githubusercontent.com/ThaoLe1998/Gtnm_QuanLyNhom/master/WebContent/images/logo.ico">

</head>
<body>
<header>

    
    <nav class="navbar navbar-default" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><i class="fa fa-home"></i> Home</a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
           
            <ul class="nav navbar-nav navbar-right">
                <li><a href="register.html">
                <button type="button" class="btn btn-danger">Register</button>
                </a></li>
               
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
    
  
 
    
</header>
        
        <div class="row">
         <form action="Login?action=signIn" method="post">
        
            <div id="trai" class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
                    <h1>Welcome to our website</h1>
                  <h5>If you are not a member, please <a href="#">register</a>. </h5>
                    
   
                    
            </div>
            <div id="phai" class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                  <h1>Login</h1>
                 
                 <div class="input-group a1">
                     <div class="input-group-addon">
                    <i class="fa fa-envelope-o"></i> Email
                     
                     </div>
                     <input type="email" class="form-control" autofocus id="exampleInputAmount" placeholder="Enter email ...">
                 </div>

                 <div class="input-group a2">
                    <div class="input-group-addon">
                  <i class="fa fa-key"></i> Password
                    
                    </div>
                    <input type="password" class="form-control" id="exampleInputAmount" placeholder="Enter password...">
                </div>
                
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">
                        Remember me
                    </label>
                </div>
                 <div class="row">
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                  
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                      
                        
                    </div>
                 </div>
                
                <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                        <h4><a href="forgotPass.html">Forgot password</a></h4>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-default a3">Login</button>
                        </span>
                        
                    </div>
                </div>
                 <div class="row" style="height: 60px !important;">
                            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            
                          <jsp:include page="check.jsp"></jsp:include>
                            
                              </div>
                              <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                      <jsp:include page="gmaillogin.jsp"></jsp:include>
          
                                  
                              </div>
                           </div>
                
                 
              
               

                </div>
           </form>
        


    </div>

   <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-1.10.2.min.js"></script>
</body>
</html>