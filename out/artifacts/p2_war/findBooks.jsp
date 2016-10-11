<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2016/9/20
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*,java.sql.*"
         pageEncoding="GB2312" %>
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
    <title>按照作者查找图书</title>
</head>
<body style = "background :url('images/p1.jpg') no-repeat center">
<center>
    <br/>
<h3 class = "FONT1">${name} 所著的图书</h3>
    <br/><hr/>
<table class = "Book , FONT3">
    <tr>
        <td class ="allLi">ISBN</td>
        <td class ="allLi">书名</td>
        <td class ="allLi">作者</td>
        <td class ="allLi">出版商</td>
        <td class ="allLi">出版日期</td>
        <td class ="allLi">价格</td>
    </tr>
    <s:iterator value="findlist" status="st">
        <tr>
            <td class = "allLi"><s:property value="ISBN"></s:property> </td>
            <td class = "allLi"><s:a href="showbookinfo.action?isbn=%{ISBN}">
                <s:property value="title"></s:property>
            </s:a></td>
            <td class = "allLi"><s:property value="authorname"></s:property> </td>
            <td class = "allLi"><s:property value="publisher"></s:property></td>
            <td class = "allLi"><s:date name="publishdate" format="yyyy-MM-dd"></s:date></td>
            <td class = "allLi"><s:property value="price"></s:property> </td>

        </tr>
    </s:iterator>
</table>
<INPUT name="back" type="button" value="返回" onClick="location.href='findasauthor.jsp'" style="background-color: ghostwhite;border:0 " class = "FONT2">
</center>
</body>
</html>
