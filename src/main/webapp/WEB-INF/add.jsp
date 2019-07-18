<%--
  Created by IntelliJ IDEA.
  User: zssee
  Date: 2019/7/7
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加班级</title>
    <script type="text/javascript" src="../static/js/jquery-1.12.4.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#name").blur(function () {
                $.ajax({
                    type: "GET",
                    async: true,
                    url: "/checkNameExists",
                    data: {"name": $(this).val()},
                    dataType: "json",
                    success: function (data) {
                        //alert("data:"+JSON.stringify(data));
                        if (data.result == "exists") {
                            $("#namespan").html('该班级名已存在，请重新输入').css("color", "red");
                        } else {
                            $("#namespan").html('✔').css("color", "green");
                        }
                    }
                })
            })
        })
    </script>
    <style type="text/css">
        .dd {
            position: relative;
            right: -650px;
        }
    </style>
</head>
<body>
<form action="/add" align="center">
    <h3>添加班级信息</h3>
    <table>
        <tr>
            <td class="dd">班级名：<input type="text" name="name" id="name">
                <span id="namespan">*输入格式：如：java11</span>
            </td>
        </tr>
        <tr>
            <td class="dd"> 班主任：<input type="text" name="teacher"></td>

        </tr>
        <tr>
            <td class="dd">开班时间：<input type="date" name="openinghours"></td>
        </tr>
    </table>
    <p align="center"><input type="submit" value="提交"> <input type="button" value="返回" onclick="location.href='/list'"></p>

</form>
</body>
</html>
