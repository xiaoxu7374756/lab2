package Action; /**
 * Created by dell on 2016/9/14.
 */
import Data.Author;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;
import org.DBpool;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import Data.Book;

import static com.opensymphony.xwork2.Action.SUCCESS;

public class BookInfo extends ActionSupport{
    private String isbn = "asdasd";
    private Book Ibook = new Book();
    private Author Iauthor = new Author();

    public void setIauthor(Author iauthor) {
        Iauthor = iauthor;
    }

    public Author getIauthor() {
        return Iauthor;
    }

    public void setIbook(Book ibook) {
        Ibook = ibook;
    }

    public Book getIbook() {
        return Ibook;
    }


    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
    private void bookinfo(Author A , Book B) throws Exception{
        DBpool dbp = new DBpool();
        int Aid = 0;
        String sql = "select * from book";
        ResultSet rs = dbp.excuteQuery(sql);
        String sql2 = "select * from author";
        ResultSet zrs = dbp.excuteQuery(sql2);
        while(rs.next()){
            if (isbn.equals(rs.getString(1))) {
                B.setISBN(rs.getString(1));
                B.setTitle(rs.getString(2));
                B.setAuthorID(rs.getInt(3));
                B.setPublisher(rs.getString(4));
                B.setPublishdate(rs.getDate(5));
                B.setPrice(rs.getDouble(6));
                Aid = rs.getInt(3);
            }
        }
        while(zrs.next()){
            if (zrs.getInt(1) == Aid) {
                A.setAge(zrs.getInt(3));
                A.setName(zrs.getString(2));
                A.setAuthorid(zrs.getInt(1));
                A.setCountry(zrs.getString(4));
            }
        }
    }
    public String execute() throws Exception{
        bookinfo(Iauthor,Ibook);
        return SUCCESS;
    }
}
