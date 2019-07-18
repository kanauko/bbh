<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <%--    <base href="<%=request.getContextPath()%>/" />--%>
    <meta charset="UTF-8">
    <title>水电费管理系统</title>
    <link type="text/css" rel="stylesheet" href="../static/css/style.css"/>
    <link type="text/css" rel="stylesheet" href="../static/css/public.css"/>
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
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>水电费管理系统</h1>

    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b"><%=session.getAttribute("userName")%></span> , 欢迎你！</p>
        <a href="/user/logout.action">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time"><%
        out.print(new Date().toLocaleString());
    %></span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian ">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li ><a href="/list">班级管理</a></li>
                <li><a href="proList.pro">宿舍管理</a></li>
                <li><a href="/user/list.action">学生管理</a></li>
                <li><a href="password.jsp">水电费管理</a></li>
                <li><a href="/user/logout.action">账户管理</a></li>
                <li><a href="/user/logout.action">消息系统</a></li>
                <li><a href="/welcome">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>班级管理页面 >> 班级添加页面</span>
        </div>

            <form action="/add">
                <div class="providerAdd">
                    <div>
                        <label>班级名：</label>
                        <input type="text" name="name" id="name"/>
                        <span id="namespan">*</span>
                    </div>

                    <div>
                        <label >班主任：</label>
                        <input type="text" name="teacher"/>
                    </div>
                    <div>
                    <label>开班时间：</label>
                    <input type="date" name="openinghours"/>
                </div>

                    <div class="providerAddBtn">
                        <input type="submit" value="保存" />
                        <input type="button" value="返回" onclick="location.href='/list'" />
                    </div>
                </div>
            </form>



    </div>

</section>
<footer class="footer">
    版权归北大青鸟
</footer>
<%--<script src="js/time.js"></script>--%>
<%--<script src="js/jquery.js"></script>--%>
<%--<script src="js/user.js"></script>--%>
<%--<script src="js/My97DatePicker/WdatePicker.js"></script>--%>

</body>
</html>
