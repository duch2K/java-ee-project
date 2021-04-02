<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="./styles/style.css" rel="stylesheet">
    <title>Login Page</title>
</head>
<body>

<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="registration">Registration Page</a>
                </li>
            </ul>
        </div>
    </nav>
</header>
<br>

<form action="login" method="post">
    <div class="form-group">
        <label for="exampleInputEmail1">Username</label>
        <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" name="password" class="form-control" id="exampleInputPassword1">
    </div>
    <button type="submit" class="btn btn-primary">Log in</button>
</form>

<%
    if ((String)request.getAttribute("status") != null && ((String)request.getAttribute("status")).equals("false")) {
        out.println("<p class=error>Username or password is not correct!</p>");
    }
%>


<%--    <form action="login" method="post">--%>
<%--        <label for="username">Username:</label>--%>
<%--        <input type="text" id="username" name="username">--%>

<%--        <br><br>--%>

<%--        <label for="password">Password:</label>--%>
<%--        <input type="password" id="password" name="password">--%>

<%--        <button type="submit">Log in</button>--%>
<%--    </form>--%>


</body>
</html>
