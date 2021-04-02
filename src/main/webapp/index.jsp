<%@ page contentType="text/html" pageEncoding="UTF-8" import ="java.util.*" %>
<%@ page import="kz.iitu.javaee.models.Book" %>
<%@ page import="kz.iitu.javaee.dao.BookDao" %>
<%@ page import="kz.iitu.javaee.dao.StudentDao" %>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="./styles/style.css" rel="stylesheet">
    <title>Home</title>
</head>
<body>
    <%
        BookDao bookDao = new BookDao();
        List<Book> books = bookDao.selectAllBooks();
        String s = "";
        for(Book b : books) {
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
        <nav class="ul-flex">
            <div>
                <a class="header-link" href="registration">Cart</a>
            </div>
            <div>
                <a class="header-link" href="logoutServlet">Logout</a>
            </div>
            <div>
                <a class="header-link" href="borrowed_books">Borrowed Books</a>
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
