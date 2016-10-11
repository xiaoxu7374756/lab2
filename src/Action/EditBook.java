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

import static com.opensymphony.xwork2.Action.SUCCESS;
import static org.DatabaseConn.getConn;

/**
 * Created by dell on 2016/9/21.
 */
public class EditBook {
    private String Eisbn = null;
    private Book Ebook = new Book();
    private List<Author> authorlist = new ArrayList<>();;

    public List<Author> getAuthorlist() {
        return authorlist;
    }

    public void setAuthorlist(List<Author> authorlist) {
        this.authorlist = authorlist;
    }

    public Book getEbook() {
        return Ebook;
    }

    public void setEbook(Book ebook) {
        Ebook = ebook;
    }

    public String getEisbn() {
        return Eisbn;
    }

    public void setEisbn(String eisbn) {
        Eisbn = eisbn;
    }
    private void EditBooks() throws Exception{
        DBpool dbp = new DBpool();
        String sql1 = "select * from book";
        ResultSet rs = dbp.excuteQuery(sql1);
        String sql2 = "select * from author";
        ResultSet zrs = dbp.excuteQuery(sql2);
        while(zrs.next()) {
            Author temp = new Author();
            temp.setAuthorid(zrs.getInt(1));
            temp.setName(zrs.getString(2));
            temp.setAge(zrs.getInt(3));
            temp.setCountry(zrs.getString(4));
            authorlist.add(temp);
        }
        while(rs.next()){
            if (Eisbn.equals(rs.getString(1))) {
                Ebook.setISBN(rs.getString(1));
                Ebook.setTitle(rs.getString(2));
                Ebook.setAuthorID(rs.getInt(3));
                Ebook.setPublisher(rs.getString(4));
                Ebook.setPublishdate(rs.getDate(5));
                Ebook.setPrice(rs.getDouble(6));
            }
        }

    }
    public String change() throws Exception{
        Connection conn;
        String url = String.format("jdbc:mysql://localhost:3306/bookdb");
        String username = "root";
        String password = "X951109asd";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection(url, username, password);
        Statement stm = conn.createStatement();
        String sql = "UPDATE Book SET authorid ='"+Ebook.getAuthorID()+"', publisher ='" +Ebook.getPublisher()
                +"', publishdate ='"+Ebook.getPublishdate()+ "', price ='"+Ebook.getPrice() +"' where isbn ='"+Ebook.getISBN()+"'";
        stm.executeUpdate(sql);
        return SUCCESS;
    }
    public String del() throws Exception{
        Connection conn;
        String url = String.format("jdbc:mysql://localhost:3306/bookdb");
        String username = "root";
        String password = "X951109asd";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection(url, username, password);
        Statement stm = conn.createStatement();
        String sql = "delete from book where isbn ='" + Eisbn +"'";
        stm.executeUpdate(sql);
        return SUCCESS;
    }
    public String execute() throws Exception{
        EditBooks();
        return SUCCESS;
    }

}
