<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2016/9/19
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*,java.sql.*"
         pageEncoding="GB2312" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<style type="text/css">
    <!--
    .FONT1 {
        font-family: "������κ";
        font-size:60px;
        color: gold;
    }
    .FONT2 {
        font-family: "������κ";
        font-size:40px;
        color: deepskyblue;
    }
    .FONT3 {
        font-family: "������κ";
        font-size:20px;
    }
    -->

</style>
<head>
    <title>�鿴ͼ��</title>
</head>
<body style = "background :url('images/p1.jpg')">
<center>
    <br/>
    <h3 class = "FONT1">�鿴ͼ��</h3>
    <INPUT name="add" type="button" value="���ͼ��" onClick="location.href='addBook1.action'" style="background-color: ghostwhite;border:0 " class = "FONT2">
    <INPUT name="back" type="button" value="������ҳ" onClick="location.href='index.jsp'" style="background-color: ghostwhite;border:0 " class = "FONT2">
    <br/>
    <hr/>
<table class = "Book">
    <tr>
    <td class ="allLi , FONT3">ISBN</td>
    <td class ="allLi, FONT3">����</td>
    <td class ="allLi, FONT3">����</td>
    <td class ="allLi, FONT3">������</td>
    <td class ="allLi, FONT3">��������</td>
    <td class ="allLi, FONT3">�۸�</td>
</tr>
<s:iterator value="booklist" status="st">
    <tr>
        <td class = "allLi, FONT3"><s:property value="ISBN"></s:property> </td>
        <td class = "allLi, FONT3">
            <s:a href="showbookinfo.action?isbn=%{ISBN}">
            <s:property value="title"></s:property>
        </s:a></td>
        <td class = "allLi, FONT3"><s:property value="authorname"></s:property> </td>
        <td class = "allLi, FONT3"><s:property value="publisher"></s:property></td>
        <td class = "allLi, FONT3"><s:date name="publishdate" format="yyyy-MM-dd"></s:date></td>
        <td class = "allLi, FONT3"><s:property value="price"></s:property> </td>

    </tr>
</s:iterator>
    </table>
    </center>
</body>
</html>
