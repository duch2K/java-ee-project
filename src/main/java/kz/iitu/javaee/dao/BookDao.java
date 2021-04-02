package kz.iitu.javaee.dao;

import kz.iitu.javaee.models.Book;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDao {
    private String url = "jdbc:postgresql://localhost:5432/test_db";;
    private String username = "postgres";
    private String password = "postgres";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public List<Book> selectAllBooks() {
        List<Book> books = new ArrayList<Book>();
        String sql = "SELECT * FROM book";
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Integer book_id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                books.add(new Book(book_id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return books;
    }

    public Book selectBook(Integer id) {
        Book book = new Book();
        String sql = "SELECT * FROM book WHERE book_id = " + id;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Integer book_id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                book = new Book(book_id, name);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return book;
    }
}
