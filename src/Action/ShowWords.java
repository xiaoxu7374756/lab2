package Action; /**
 * Created by dell on 2016/9/14.
 */
import Data.Book;
import com.opensymphony.xwork2.ActionSupport;
import org.DBpool;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ShowWords extends ActionSupport{
    private String name = null;
    private List<Book> findlist;
    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public List<Book> getFindlist() {
        return findlist;
    }

    public void setFindlist(List<Book> findlist) {
        this.findlist = findlist;
    }

    private List<Book> findBook() throws Exception {
        int authorid = 0;
        DBpool dbp = new DBpool();
        String sql = "select * from book";
        ResultSet rs = dbp.excuteQuery(sql);
        String sql2 = "select * from author";
        ResultSet zrs = dbp.excuteQuery(sql2);
        String[] ars = new String[999];
        while(zrs.next()) {
            ars[zrs.getInt(1)] = zrs.getString(2);
        }
        for (int i = 1 ; i < 999 ; i++)
        {
            if (ars[i] != null && name.equals(ars[i]))
            {
                authorid = i;
                List<Book> bookll = new ArrayList<>();
                while(rs.next()){
                    if (rs.getInt(3) == authorid){
                    Book temp = new Book();
                    temp.setISBN(rs.getString(1));
                    temp.setTitle(rs.getString(2));
                    temp.setAuthorID(rs.getInt(3));
                    temp.setPublisher(rs.getString(4));
                    temp.setPublishdate(rs.getDate(5));
                    temp.setPrice(rs.getDouble(6));
                    temp.setAuthorname(ars[rs.getInt(3)]);
                    bookll.add(temp);
                    }
                }
                return bookll;
            }
        }
        return null;
    }
    @Override
    public String execute() throws Exception{
        if (findBook() == null) return INPUT;
        else {
            setFindlist(findBook());
            return SUCCESS;
        }
    }
}
