<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/28/2026
  Time: 3:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/TinhTong.jsp" method="post">
    <input name="n1" placeholder=" Nhập số thứ nhất ">
    <input name="n2" placeholder=" Nhập số thứ hai ">
    <button>Tính tổng</button>
    <p>Kết quả = ${sum}</p>
</form>
</body>
</html>
