package kz.iitu.javaee.dao;

import kz.iitu.javaee.models.Book;
import kz.iitu.javaee.models.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {
    private String url;
    private String username;
    private String password;

    public StudentDao() {
        this.url = "jdbc:postgresql://localhost:5432/test_db";
        this.username="postgres";
        this.password="postgres";
    }

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

    public void createStudent(Student student) {
        String sql = "INSERT INTO student" + "  (login, password) VALUES "
                + " (?, ?);";
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, student.getUsername());
            preparedStatement.setString(2, student.getPassword());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Student> selectAllStudents() {
        List<Student> students = new ArrayList<Student>();
        String sql = "SELECT * FROM student";
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Integer id = resultSet.getInt("id");
                String name = resultSet.getString("login");
                String password = resultSet.getString("password");
                students.add(new Student(id, name, password));
                System.out.println(name);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }

    public Student selectStudents(String login) {
        Student student = null;
        String sql = "SELECT * FROM student WHERE login = " + login;

        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Integer sId = resultSet.getInt("id");
                String sLogin = resultSet.getString("login");
                String sPassword = resultSet.getString("password");
                student = new Student(sId, sLogin, sPassword);
                return student;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student;
    }

    public List<Book> selectStudentBooks(int id) {
        List<Book> books = new ArrayList<Book>();
        String sql = "SELECT * FROM student_book WHERE studId = " + id;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Integer bookId = resultSet.getInt("bookId");
                System.out.println("Book id: " + bookId);
                String sql2 = "SELECT * FROM book WHERE id = " + bookId;
                PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);
                ResultSet resultSet2 = preparedStatement2.executeQuery();

                while(resultSet2.next()) {
                    Integer bId = resultSet2.getInt("id");
                    String name = resultSet2.getString("name");
                    books.add(new Book(id, name));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return books;
    }

    public boolean checkLogin(String login) {
        String sql = "SELECT * FROM student WHERE login = '" + login + "'";
        boolean ans = false;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String name = resultSet.getString("login");
                if (name.equals(login)) {
                    ans = true;
                    break;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ans;
    }

    public boolean checkStudent(String login, String password) {
        String sql = "SELECT * FROM student WHERE login = '" + login + "' AND password = '" + password + "'";
        boolean ans = false;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String name = resultSet.getString("login");
                String password1 = resultSet.getString("password");
                if (name.equals(login) && password1.equals(password)) {
                    ans = true;
                    break;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ans;
    }
}
