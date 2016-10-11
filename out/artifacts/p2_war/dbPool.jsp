<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2016/9/18
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*,java.sql.*"
 pageEncoding="GB2312" %>
<%@ page import ="org.DBpool" %>
<%
    DBpool dbp = new DBpool();
    String sql = "select * from book";
    ResultSet rs = dbp.excuteQuery(sql);
    while(rs.next()){
        out.print("<tr>");
        out.print("<td>" + rs.getInt(1) +"</td>");
        out.print(rs.getString(2));
        out.print(rs.getInt(3));
        out.print(rs.getString(4));
        out.print(rs.getInt(5));
        out.print(rs.getDouble(6));
        out.print("</tr>");
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
