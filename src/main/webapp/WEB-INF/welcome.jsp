<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>水电费管理系统</title>
    <link type="text/css" rel="stylesheet" href="../static/css/public.css"/>
    <link type="text/css" rel="stylesheet" href="../static/css/style.css"/>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>水电费管理系统</h1>

    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b">${loginedUser.userName}</span> , 欢迎你！</p>
        <a href="/userList">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time"><%
        out.print(new Date().toLocaleString());
    %>
</span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li ><a href="/list">班级管理</a></li>
                <li><a href="proList.pro">宿舍管理</a></li>
                <li><a href="/user/list.action">学生管理</a></li>
                <li><a href="password.jsp">水电费管理</a></li>
                <li><a href="/userList">账户管理</a></li>
                <li><a href="/userList">消息系统</a></li>
                <li><a href="/hello">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <img class="wColck" src="../static/img/clock.jpg" alt=""/>
        <div class="wFont">
            <h2>${loginedUser.userName}</h2>
            <p>欢迎来到水电费管理系统!</p>
        </div>
    </div>
</section>
<footer class="footer">
    版权归北大青鸟
</footer>
<%--<script src="js/time.js"></script>--%>
</body>
</html>
