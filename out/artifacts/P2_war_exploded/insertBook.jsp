<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2016/9/24
  Time: 22:41
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
    <title>添加图书</title>
    <sx:head />
    <script language="JavaScript">
        function ale(){
            alert("添加成功！");
        }
    </script>
</head>
<body style = "background :url('images/p1.jpg') no-repeat center">
<center>
    <br/>
    <h3 class = "FONT1">添加图书</h3>
    <br/>
    <hr/>
    <s:form action ="addBook2" methor = "POST" class = "FONT3">
        <s:textfield name = "abook.ISBN"  label = "ISBN"></s:textfield>
        <s:textfield name = "abook.title"  label = "书名"></s:textfield>
        <s:select list="authorlist2" name="abook.authorID" label = "作者" listKey="authorid" listValue="name"></s:select>
        <s:textfield name = "abook.publisher"  label = "出版社"></s:textfield>
        <sx:datetimepicker  name="abook.publishdate" label = "出版日期" displayFormat = "yyyy-MM-dd" toggleType = "explode"
                            formatLength="long"></sx:datetimepicker>
        <s:textfield name = "abook.price"  label = "价格"></s:textfield>
        <tr><td>
                                    <input type = "submit" value ="保存" onclick="ale()" style="background-color: ghostwhite;border:0 " class = "FONT2">
                                    <INPUT name="back" type="button" value="取消" onClick="location.href='index.jsp'" style="background-color: ghostwhite;border:0 " class = "FONT2">
        </td></tr>
    </s:form>
</center>
</body>
</html>
