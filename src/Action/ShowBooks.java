package Action; /**
 * Created by dell on 2016/9/14.
 */
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;
import org.DBpool;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import Data.Book;
public class ShowBooks extends ActionSupport{
    private List<Book> booklist;
    public void setBooklist(List<Book> booklist) {
        this.booklist = booklist;
    }

    public List<Book> getBooklist() {
        return booklist;
    }

    private List<Book> ShowBook() throws Exception {
        DBpool dbp = new DBpool();
        String sql = "select * from book";
        ResultSet rs = dbp.excuteQuery(sql);
        String sql2 = "select * from author";
        ResultSet zrs = dbp.excuteQuery(sql2);
        String[] ars = new String[999];
        while(zrs.next()) {
            ars[zrs.getInt(1)] = zrs.getString(2);
        }
        List<Book> bookl = new ArrayList<>();
        while(rs.next()){
            Book temp = new Book();
            temp.setISBN(rs.getString(1));
            temp.setTitle(rs.getString(2));
            temp.setAuthorID(rs.getInt(3));
            temp.setPublisher(rs.getString(4));
            temp.setPublishdate(rs.getDate(5));
            temp.setPrice(rs.getDouble(6));
            temp.setAuthorname(ars[rs.getInt(3)]);
            bookl.add(temp);
        }
        return bookl;
    }
    public String execute() throws Exception{
        booklist = ShowBook();
        return SUCCESS;
    }


}