<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 合理性
  Date: 2019/7/9
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>水电费管理系统</title>
    <%--<base href="<%=request.getContextPath()%>/">--%>
    <link type="text/css" rel="stylesheet" href="../static/css/style.css"/>
    <link type="text/css" rel="stylesheet" href="../static/css/public.css"/>
    <script type="text/javascript" src="../static/js/jquery-1.12.4.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".removeClass").click(function () {
                if (confirm("你确定要删除吗？")){
                    // alert("开始删除")
                    var $tr=$(this).parent().parent();
                    var id=$tr.find("td:eq(0)").html();
                    //alert("userCode:"+userCode)
                    $.ajax({
                        type:"GET",
                        async:true,
                        url:"/del",
                        data:{"id":id},
                        dataType:"json",
                        success:function (data) {
                            if(data.result=="success"){
                                alert("删除成功！")
                                $tr.remove();
                            }else {
                                alert("删除失败！")
                            }
                        }
                    })
                }
            })
        })
    </script>

</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>水电费管理系统</h1>
    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b"> ${loginedUser.userName}</span> , 欢迎你！</p>
        <a href="/userList">退出</a>
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
                <li><a href="/userList">账户管理</a></li>
                <li><a href="/userList">消息系统</a></li>
                <li><a href="/welcome">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面</span>
        </div>
        <form name="form1" action="/user/list.action" method="post">
            <div class="search">

                <span>姓名：</span>
                <input type="text" name="name" value="${bbh.name}" placeholder="请输入姓名"/>
                <span>性别：</span>
                <select>
                    <OPTION value="男">男</OPTION>
                    <OPTION value="女">女</OPTION>
                </select>
                <span>角色：</span>
                <select>
                    <OPTION value="班主任">班主任</OPTION>
                    <OPTION value="学生">学生</OPTION>
                </select>
                <input type="submit" value="查询" id="searchUser" style="width: 100px;height:35px "/>

                <a href="/addUser">添加用户</a>
            </div>
            <!--用户-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="10%">编号</th>
                    <th width="20%">姓名</th>
                    <th width="20%">性别</th>
                    <th width="20%">角色</th>
                    <th width="30%">操作</th>
                </tr>

                <c:forEach var="b" items="${pageInfo.list}">
                    <tr>
                        <td>${b.id}</td>
                        <td>${b.name}</td>
                        <td>${b.sex}</td>
                        <td><${b.rolename}></td>
                        <td>
                            <a href="/toupdate?id=${b.id}"><img src="../static/img/xiugai.png" alt="修改" title="修改"/></a>
                            <a href="javascript:void(0);" class="removeClass"><img src="../static/img/schu.png" alt="删除" title="删除"/></a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <p>
                当前${pageInfo.pageNum}/${pageInfo.pages}&nbsp;
                <a href="list?pageNum=1&name=${bbh.name}&teacher=${bbh.teacher}">首页</a>
                <c:if test="${pageInfo.hasPreviousPage}">
                    <a href="list?pageNum=${pageInfo.pageNum-1}&name=${bbh.name}&teacher=${bbh.teacher}">上一页</a>
                </c:if>
                <c:if test="${pageInfo.hasNextPage}">
                    <a href="list?pageNum=${pageInfo.pageNum+1}&name=${bbh.name}&teacher=${bbh.teacher}" style="font-size: larger;">下一页</a>
                </c:if>
                <a href="list?pageNum=${pageInfo.pages}&name=${bbh.name}&teacher=${bbh.teacher}">尾页</a>
            </p>
        </form>
    </div>

</section>

<!--点击删除按钮后弹出的页面-->
<%--<div class="zhezhao"></div>--%>
<%--<div class="remove" id="removeUse">--%>
<%--    <div class="removerChid">--%>
<%--        <h2>提示</h2>--%>
<%--        <div class="removeMain">--%>
<%--            <p>你确定要删除该用户吗？</p>--%>
<%--            <a href="#" id="yes">确定</a>--%>
<%--            <a href="#" id="no">取消</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<footer class="footer">
    版权归北大青鸟
</footer>

<%--<script src="js/jquery.js"></script>--%>
<%--<script src="js/user.js"></script>--%>
<%--<script src="js/time.js"></script>--%>

</body>
</html>
