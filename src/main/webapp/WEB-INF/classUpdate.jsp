<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>水电费管理系统</title>
    <link type="text/css" rel="stylesheet" href="../static/css/style.css"/>
    <link type="text/css" rel="stylesheet" href="../static/css/public.css"/>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>水电费管理系统</h1>

    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b"> ${loginedUser.userName}</span> , 欢迎你！</p>
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
            <span>班级管理页面 >> 班级修改页面</span>
        </div>
        <div class="providerAdd">
            <form action="/user/update.action" method="post">
                <input type="hidden" name="id" value="${bbh.id}">
                <div>
                    <label for="name">班级名：</label>
                    <input type="text" name="userName" id="name" value="${bbh.name}"/>
                </div>
                <div>
                    <label for="teacher">班主任：</label>
                    <input type="text" name="teacher" id="teacher" value="${bbh.teacher}"/>
                </div>

                <div>
                    <label for="openinghours">开班时间：</label>
                    <input type="date" name="openinghours" id="openinghours" value='<fmt:formatDate value="${b.openinghours}" pattern="yyyy-MM-dd"/>'/>

                </div>

                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="userList.jsp">返回</a>-->
                    <input type="submit" value="保存">
                    <input type="button" value="返回" onclick="location.href='/list'" />

                </div>
            </form>
        </div>

    </div>
</section>
<footer class="footer">
    版权归北大青鸟
</footer>

</body>
</html>
