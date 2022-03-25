<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잘 키운 작물</title>
</head>
<body>
<c:if test="${str==null }">
<script>
alert("아이디 및 비밀번호가 틀렸습니다.")
history.go(-1);
</script>
</c:if>
<c:if test="${str!=null }">
<script>
alert(${str})
</script>
</c:if>

</body>
</html>