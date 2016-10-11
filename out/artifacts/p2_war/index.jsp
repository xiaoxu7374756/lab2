<%--
style="margin-right:190px"
  Created by IntelliJ IDEA.
  User: dell
  Date: 2016/9/16
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    -->

    </style>
<head>
    <link rel ="stylesheet" type = text/css href = "Style.css">
    <title>图书管理系统</title>

</head>
<body style = "background :url('images/p1.jpg') no-repeat center">
<center>
    <br/>
    <h3 class="FONT1">图书管理系统</h3>
    <hr/>
    <br/>
    <br/>
    <form name = "myForm2" action ="showBooks.action" method="post">
        <input type = "submit" name = "mySubmit" value = "查看所有书籍" style="background-color: ghostwhite;border:0 "class="FONT2">
    </form>

    <INPUT name="find" type="button" value="按照作者查看书籍" onClick="location.href='findasauthor.jsp'" style="background-color:ghostwhite;border:0 "class="FONT2 ">
    <br/>
    <br/>
    <INPUT name="add" type="button" value="添加图书" onClick="location.href='addBook1.action'"style="background-color:ghostwhite;border:0 "class="FONT2" >
    <br/>
    <br/>
    <INPUT name="add" type="button" value="添加作者" onClick="location.href='insertAuthor.jsp'"style="background-color:ghostwhite;border:0 "class="FONT2">
</center>

</body>
</html>