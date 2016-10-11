<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2016/9/21
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
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
    <title>编辑</title>
    <sx:head />
    <script language="JavaScript">
        function ale(){
            alert("编辑成功！");
        }
    </script>
</head>
<body style = "background :url('images/p1.jpg') no-repeat center">
<center>
<br/>
<h3 class = "FONT1">编辑图书</h3>
<br/>
<hr/>

    <s:form action ="editBook2" methor = "POST">
        <td class = "aliLi"><s:label label ="ISBN" value = "%{Ebook.ISBN}"></s:label></td>
        <td class = "aliLi"><s:label label ="书名" value = "%{Ebook.Title}"></s:label></td>
        <td class = "aliLi"><s:hidden name="ebook.ISBN" value="%{Ebook.ISBN}"></s:hidden></td>
        <td class = "aliLi"><s:hidden name="ebook.title" value="%{Ebook.Title}"></s:hidden></td>
        <td class = "aliLi"><s:select list="authorlist" name="ebook.authorID" label = "作者" listKey="authorid" listValue="name"></s:select></td>
        <td class = "aliLi"><s:textfield name = "ebook.publisher" value = "%{Ebook.publisher}" label = "出版社"></s:textfield></td>
        <td class = "aliLi"> <sx:datetimepicker  name="ebook.publishdate" label = "出版日期" displayFormat = "yyyy-MM-dd" toggleType = "explode"
                           formatLength="long"></sx:datetimepicker></td>
        <td class = "aliLi"><s:textfield name = "ebook.price" value = "%{Ebook.price}" label = "价格"></s:textfield></td>
        <tr>
        <input type = "submit" value ="保存" onclick="ale()" style="background-color: ghostwhite;border:0 " class = "FONT2">

        <INPUT name="back" type="button" value="取消" onClick="location.href='index.jsp'" style="background-color: ghostwhite;border:0 " class = "FONT2">
            </tr>
    </s:form>

    </center>
</body>
</html>
