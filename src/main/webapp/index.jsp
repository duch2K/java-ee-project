<%@ page contentType="text/html" pageEncoding="UTF-8" import ="java.util.*" %>
<%@ page import="kz.iitu.javaee.models.Book" %>
<%@ page import="kz.iitu.javaee.dao.BookDao" %>
<<<<<<< HEAD
<%@ page import="kz.iitu.javaee.dao.StudentDao" %>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="./styles/style.css" rel="stylesheet">
=======

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
>>>>>>> 52f13cd... init
    <title>Home</title>
</head>
<body>
    <%
        BookDao bookDao = new BookDao();
        List<Book> books = bookDao.selectAllBooks();
        String s = "";
<<<<<<< HEAD
        for(Book b : books) {
=======
        for (Book b : books) {
>>>>>>> 52f13cd... init
            String str = "<div class=\"book_card\">\n" +
                    "                <div>\n" +
                    "                    <p>Name: " + b.getName() + "</p>\n" +
                    "                    <a href=\"book?id=" +b.getId()+ "\">Show detail</a>" +
                    "                </div>\n" +
                    "            </div>";
            s += str + "\n";
        }
    %>

    <header>
<<<<<<< HEAD
        <nav class="ul-flex">
            <div>
                <a class="header-link" href="registration">Cart</a>
            </div>
            <div>
                <a class="header-link" href="logoutServlet">Logout</a>
            </div>
            <div>
                <a class="header-link" href="borrowed_books">Borrowed Books</a>
=======
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="">Home</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="logoutServlet">Logout</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="borrowed-books">My borrowed books</a>
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
    <div class="div_main">
        <h1 class="title">Books</h1>
        <div class="ul-flex">
            <%= s %>
        </div>
    </div>
=======
    <main>
        <div class="container">
            <h1 class="title">Books</h1>
            <div class="ul-flex">
                <%= s %>
            </div>
        </div>
    </main>
>>>>>>> 52f13cd... init
</body>
</html>
