<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 5/29/2026
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <c:import url="../layout/library.jsp"/>
</head>
<body>
<c:import url="../layout/mynavbar.jsp"/>
<h1>Danh sách sinh viên</h1>
<button class="btn btn-sm btn-success">Thêm mới sinh viên</button>
<table class="table table-dark table-tripped">
    <tr>
        <th>STT</th>
        <th>ID</th>
        <th>Name</th>
        <th>Gender</th>
        <th>Score</th>
        <th>Rank</th>
    </tr>
    <c:forEach var="student" items="${studentList}" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <c:if test="${student.gender}">
                <td>Male</td>
            </c:if>
            <c:if test="${!student.gender}">
                <td>Female</td>
            </c:if>
            <td>${student.score}</td>
            <td>
                <c:choose>
                    <c:when test="${student.score>=8}">
                        <span>Giỏi</span>
                    </c:when>
                    <c:when test="${student.score>=7}">
                        <span>Khá</span>
                    </c:when>
                    <c:when test="${student.score>=5}">
                        <span>Trung bình</span>
                    </c:when>
                    <c:otherwise>
                        <span>Yếu</span>
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
