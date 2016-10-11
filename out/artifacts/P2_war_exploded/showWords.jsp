<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2016/9/14
  Time: 16:55
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
    <title>错误</title>
</head>
<body style = "background :url('images/p1.jpg') no-repeat center">
<center>
    <br/>
    <h3 class = "FONT1">没有找到 ${name} 的图书</h3>
    <hr/>
    <br/>
    <INPUT name="back" type="button" value="重新查找" onClick="location.href='findasauthor.jsp'"  style="background-color: ghostwhite;border:0 " class = "FONT2">

    <INPUT name="back" type="button" value="返回主页" onClick="location.href='index.jsp'"  style="background-color: ghostwhite;border:0 " class = "FONT2">
</center>
</body>
</html>
