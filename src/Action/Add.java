package Action;

import Data.Author;
import Data.Book;
import org.DBpool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;


public class Add {
    private List<Author> authorlist2 = new ArrayList<>();
    private Book abook = new Book();
    private Author aauthor = new Author();

    public void setAauthor(Author aauthor) {
        this.aauthor = aauthor;
    }

    public Author getAauthor() {
        return aauthor;
    }

    public void setAuthorlist2(List<Author> authorlist2) {
        this.authorlist2 = authorlist2;
    }

    public List<Author> getAuthorlist2() {
        return authorlist2;
    }

    public void setAbook(Book abook) {
        this.abook = abook;
    }

    public Book getAbook() {
        return abook;
    }

    public String addbook() throws Exception{
        DBpool dbp = new DBpool();
        String sql2 = "select * from author";
        ResultSet zrs = dbp.excuteQuery(sql2);
        while(zrs.next()) {
            Author temp = new Author();
            temp.setAuthorid(zrs.getInt(1));
            temp.setName(zrs.getString(2));
            temp.setAge(zrs.getInt(3));
            temp.setCountry(zrs.getString(4));
            authorlist2.add(temp);
        }
        return SUCCESS;
    }
    public String addbook2() throws Exception{
        Connection conn;
        String url = String.format("jdbc:mysql://localhost:3306/bookdb");
        String username = "root";
        String password = "X951109asd";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection(url, username, password);
        Statement stm = conn.createStatement();
        String sql = "INSERT INTO Book (ISBN, Title, AuthorID, Publisher, PublishDate, Price) VALUES " +
                "('"+abook.getISBN()+"','"+abook.getTitle()+"',"+abook.getAuthorID()+",'"+abook.getPublisher()
                +"','"+abook.getPublishdate()+"',"+abook.getPrice()+")";
        stm.executeUpdate(sql);
        return SUCCESS;
    }
    public String addauthor() throws Exception{
        if (aauthor.getAuthorid() > 999){
            return INPUT;
        }
        else {
            Connection conn;
            String url = "jdbc:mysql://localhost:3306/bookdb";
            String username = "root";
            String password = "X951109asd";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(url, username, password);
            Statement stm = conn.createStatement();
            String sql = "INSERT INTO author (AuthorID, Name, Age, Country) VALUES (" +
                    aauthor.getAuthorid() + ",'" + aauthor.getName() + "'," + aauthor.getAge() + ",'" + aauthor.getCountry() + "')";
            stm.executeUpdate(sql);
            return SUCCESS;
        }
    }

}
