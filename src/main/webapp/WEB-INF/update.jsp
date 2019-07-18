<%--
  Created by IntelliJ IDEA.
  User: zssee
  Date: 2019/7/7
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../static/js/jquery-1.12.4.js"></script>
    <script type="text/javascript">
        // $(function () {
        //     $("#sbm").click(function () {
        //         if(confirm("确定要修改吗？")){
        //             $.ajax({
        //                 type:"GET",
        //                 async:true,
        //                 url:"/update",
        //                 data:{"name":name,"teacher":teacher,"id":id},
        //                 dataType:"json",
        //                 success:function (data) {
        //                     if(data.result=="success"){
        //                         alert("修改成功！")
        //
        //                     }else {
        //                         alert("修改失败！")
        //                     }
        //                 }
        //             })
        //         }
        //     })
        // })
    </script>
    <style type="text/css">
        .dd{
            position: relative;
            right: -650px;
        }
    </style>
</head>
<body>
<form action="/update" align="center" name="form1">
    <h3>修改班级信息</h3>
    <table >
        <tr >
            <td hidden><input type="text" name="id" value="${bbh.id}"></td>
            <td class="dd" >班级名：<input type="text" name="name" id="name" value="${bbh.name}">
                <span id="namespan">*输入格式：如：java11</span>
            </td>
        </tr>
        <tr >
            <td class="dd"> 班主任：<input type="text" name="teacher" value="${bbh.teacher}"></td>

        </tr>
    </table>
    <p align="center"> <input type="submit" value="确认修改" id="sbm"> <input  type="button" value="返回" onclick="location.href='/list'"></p>

</form>
</body>
</html>
