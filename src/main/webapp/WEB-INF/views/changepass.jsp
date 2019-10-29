<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value= '/template/admin/vendor/bootstrap/css/bootstrap.min.css'/>">
    <link href="<c:url value= '/template/admin/vendor/fonts/circular-std/style.css'/>" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value= '/template/admin/libs/css/style.css'/>">
    <link rel="stylesheet" href="<c:url value= '/template/admin/vendor/fonts/fontawesome/css/fontawesome-all.css'/>">
    <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    </style>
</head>

<body>
    <div class="splash-container">
        <div class="card ">
            <div class="card-header text-center"><a href="../index.html"><img class="logo-img" src="templates/admin/images/logo.png" alt="logo"></a><span class="splash-description">Please enter your user information.</span></div>
            <div class="card-body">
                <form action="changepass" method="post" modelAttribute="account">
                	<input type="hidden" value="${account.id}" name="id" />
                	<input type="hidden" value="${account.email}" name="email" />
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="username" type="text" placeholder="Username" autocomplete="off" name="username" value="${account.username}">
                    </div>
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="password" type="password" placeholder="Password" name="password">
                    </div>
                    <button class="btn btn-block btn-primary btn-xl" type="submit">Reset Password</button>
                </form>
            </div>
            
        </div>
    </div>
  
    <script src="templates/admin/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="templates/admin/vendor/bootstrap/js/bootstrap.bundle.js"></script>
</body>
 
</html>