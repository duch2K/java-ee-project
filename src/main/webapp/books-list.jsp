<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" %>
<%@ page import="kz.iitu.javaee.models.Book" %>
<%@ page import="kz.iitu.javaee.dao.BookDao" %>

<html>
<head>
    <title>Books list</title>
</head>
<body>
<%
    BookDao bookDao = new BookDao();
    List<Book> books = bookDao.selectAllBooks();
    String s = "";
    System.out.println("All books: " + books);
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
            <div class="container">
                <a class="navbar-brand" href="/">Home</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="borrowed-books">My borrowed books</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="books-list">All books</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="students-list">All students</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="logoutServlet">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <main>
        <div class="container">
            <h1 class="title">Books</h1>
            <div class="ul-flex">
                <%= s %>
            </div>
        </div>
    </main>
</body>
</html>
