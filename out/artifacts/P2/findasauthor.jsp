<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2016/9/20
  Time: 15:03
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
    <h3 class = "FONT1">按作者查询图书</h3>
    <br/>
    <hr/>
    <br/>
<form name = "myForm" action ="showWords.action" method="post">
    请输入作者名字<input name = "name" type = "text" class = "FONT3">
    <input type = "submit" name = "check" value = "查询" class = "FONT3"><br/>
</form>
<INPUT name="back" type="button" value="返回主页" onClick="location.href='index.jsp'" style="background-color: ghostwhite;border:0 " class = "FONT2">
    </center>
</body>
</html>
