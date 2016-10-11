<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2016/9/21
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<style type="text/css">
    <!--
    .FONT1 {
        font-family: "华文新魏";
        font-size:60px;
        color: gold;
    }
    .FONT2 {
        font-family: "华文新魏";
        font-size:40px;
        color: deepskyblue;
    }
    .FONT3 {
        font-family: "华文新魏";
        font-size:20px;
    }
    -->

</style>
<head>
    <title>查看图书</title>
    <script language="JavaScript">
        function ale(){
            alert("删除成功！");
        }
    </script>
</head>
<body style = "background :url('images/p1.jpg') no-repeat center">
<center>
    <br/>
<h3 class = "FONT1">详细信息</h3>

<br/><hr/>
    <h2 class = "FONT3">图书信息</h2>
    <table class = "Book"  border="1">
        <tr>
            <td class ="allLi , FONT3">ISBN</td>
            <td class = "allLi, FONT3"><s:property value="Ibook.ISBN"></s:property> </td>
        </tr>
        <tr>
            <td class ="allLi, FONT3">书名</td>
            <td class = "allLi, FONT3"><s:property value="Ibook.title"></s:property> </td>
            </tr>
        <tr>
            <td class ="allLi, FONT3">出版商</td>
            <td class = "allLi, FONT3"><s:property value="Ibook.publisher"></s:property></td>
            </tr>
        <tr>
            <td class ="allLi, FONT3">出版日期</td>
            <td class = "allLi, FONT3"><s:date name="Ibook.publishdate" format="yyyy-MM-dd"></s:date></td>
            </tr>
        <tr>
            <td class ="allLi, FONT3">价格</td>
            <td class = "allLi, FONT3"><s:property value="Ibook.price"></s:property> </td>
        </tr>
        <tr>
            <td align="center" colspan="2" class = "allLi"><s:a href="editBook.action?Eisbn=%{Ibook.ISBN}">编辑</s:a>
                <s:a href="deleteBook.action?Eisbn=%{Ibook.ISBN}" onclick="ale()">删除</s:a></td>
        </tr>

    </table>
    <br/><hr/>
    <h2 class = "FONT3">作者信息</h2>
    <table class = "Author"  border="1">
        <tr>
            <td class ="allLi, FONT3">作者ID</td>
            <td class = "allLi, FONT3"><s:property value="Iauthor.authorid"></s:property> </td>
            </tr>
        <tr>
            <td class ="allLi, FONT3">姓名</td>
            <td class = "allLi , FONT3"><s:property value="Iauthor.name"></s:property> </td>
            </tr>
        <tr>
            <td class ="allLi, FONT3">年龄</td>
            <td class = "allLi, FONT3"><s:property value="Iauthor.age"></s:property> </td>
            </tr>
        <tr>
            <td class ="allLi, FONT3">国籍</td>
            <td class = "allLi, FONT3"><s:property value="Iauthor.country"></s:property></td>
        </tr>

    </table>
    <form name = "myForm2" action ="showBooks.action" method="post">
        <input type = "submit" name = "mySubmit" value = "返回" class = "FONT2">
    </form>
</center>
</body>
</html>
