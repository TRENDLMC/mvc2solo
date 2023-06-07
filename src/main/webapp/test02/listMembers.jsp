<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='contextPath' value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
<style>
.cls1{
font-size:40px;
text-align:center;
}
.cls2{
font-size:20px;
text-align:center;
}
.cls3{
text-align: center;
margin:auto;
}
</style>
</head>
<body>
   <p class="cls1">회원정보</p>
    <table border="1" class="cls3" >
    <tr class="cls3" bgcolor="ligthgreen">
        <td width="7%">아이디</td>
        <td width="7%">비밀번호</td>
        <td width="7%">이름</td>
        <td width="7%">이메일</td>
        <td width="7%">가입일</td>
    </tr>
    <c:choose>
        <c:when test="${empty membersList}">
            <tr>
                <td colspan="5">
                    <b>등록된 회원이 없습니다.</b>
                </td>
            </tr>
        </c:when>
        <c:when test="${!empty membersList}">
            <c:forEach var="mem" items="${membersList}">
                <tr class="cls3">
                    <td>${mem.id }</td>
                    <td>${mem.pwd }</td>
                    <td>${mem.name}</td>
                    <td>${mem.email}</td>
                    <td>${mem.joinDate}</td>
                </tr>
            </c:forEach>
        </c:when>
    </c:choose>
</table>
<a href="${contextPath}/member/memberForm.do">
    <p class="cls2"> 회원 가입하기</p>
</a>

</body>
</html>