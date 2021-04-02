<%@page contentType="text/html" pageEncoding="UTF-8" import ="java.util.*" %>
<%@ page import="kz.iitu.javaee.models.Book" %>
<%@ page import="kz.iitu.javaee.dao.BookDao" %>
<%@ page import="kz.iitu.javaee.dao.StudentDao" %>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="./styles/main.css" rel="stylesheet">
    <title>Main Page</title>
</head>
<body>
<%
     StudentDao studentDao = new StudentDao();
    List<Book> books = studentDao.selectStudentBooks(1);
    String s = "";
    System.out.println("Borred book: " + books);
    for(Book b : books) {
        String str = "<div class=\"book_card\">\n" +
                "                <div>\n" +
                "                    <p>Name: " + b.getName() + "</p>\n" +
                "                </div>\n" +
                "            </div>";
        s += str + "\n";
    }
%>

<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="registration">Borrowed books</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logoutServlet">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
</header>

<div class="div_main">
    <h1 class="title">Books</h1>
    <div class="ul-flex">
        <%= s %>
    </div>
</div>
</body>
</html>
