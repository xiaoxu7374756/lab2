<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2016/9/24
  Time: 23:29
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
    <title>添加作者</title>
    <script language="JavaScript">
        function ale(){
            alert("添加成功!");

        }
    </script>
</head>
<body style="background:url('images/p1.jpg')">
<center>
    <br/>
    <h3 class = "FONT1">添加作者</h3>
    <br/>
    <hr/>
    <s:form action ="addAuthor" methor = "POST" class = "FONT3">
        <s:textfield name = "aauthor.authorid"  label = "作者编号(长度不大于三位)"></s:textfield>
        <s:textfield name = "aauthor.name"  label = "姓名"></s:textfield>
        <s:textfield name = "aauthor.age"  label = "年龄"></s:textfield>
        <s:textfield name = "aauthor.country"  label = "国籍"></s:textfield>
        <tr><td>
            <input type = "submit" value ="保存" onclick="ale()" style="background-color: ghostwhite;border:0 " class = "FONT2">

            <INPUT name="back" type="button" value="取消" onClick="location.href='index.jsp'" style="background-color: ghostwhite;border:0 " class = "FONT2">
        </td></tr>
    </s:form>
</center>
</body>
</html>
