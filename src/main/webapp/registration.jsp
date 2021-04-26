<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<<<<<<< HEAD
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="./styles/style.css" rel="stylesheet">
=======
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
>>>>>>> 52f13cd... init
    <title>Registration Page</title>
</head>
<body>

<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
<<<<<<< HEAD
        <a class="navbar-brand" href="/">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="login">Login Page</a>
                </li>
            </ul>
=======
        <div class="container">
            <a class="navbar-brand" href="/">Home</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="login">Login Page</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="books-list">All books</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="students-list">All students</a>
                    </li>
                </ul>
            </div>
>>>>>>> 52f13cd... init
        </div>
    </nav>
</header>

<<<<<<< HEAD
<form action="registration" method="post">
    <div class="form-group">
        <label for="exampleInputEmail1">Username</label>
        <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" name="password" class="form-control" id="exampleInputPassword1">
    </div>
    <button type="submit" class="btn btn-primary">Register</button>
</form>
=======
<main>
    <div class="container">
        <form action="registration" method="post">
            <div class="form-group">
                <label for="exampleInputEmail1">Username</label>
                <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" name="password" class="form-control" id="exampleInputPassword1">
            </div>
            <button type="submit" class="btn btn-primary">Register</button>
        </form>
    </div>
</main>
>>>>>>> 52f13cd... init


<%
    if ((String)request.getAttribute("status") != null && ((String)request.getAttribute("status")).equals("false")) {
        out.println("<p class=error>Login already  exist!</p>");
    }
%>




<%--    <form action="registration" method="post">--%>
<%--        <label for="username">Username:</label>--%>
<%--        <input type="text" id="username" name="username">--%>

<%--        <br><br>--%>

<%--        <label for="password">Password:</label>--%>
<%--        <input type="password" id="password" name="password">--%>

<%--        <button type="submit">Registration</button>--%>
<%--    </form>--%>

</body>
</html>
