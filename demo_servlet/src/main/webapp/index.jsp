<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="/sum">Tới màn hình tính tổng</a>
<form action="/sum">
    <button>Tới màn hình tính tổng</button>
</form>
</body>
</html>