<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url ="../layout/app.jsp">
<c:param name ="content">
<h2>タスク一覧</h2>
<ul>
<c:forEach var ="task" items ="${tasks}">
<li>
    <a href ="${pageContext.request.contextPath}/Show?id=${task.id}">
        <c:out value="${task.id}"></c:out>
    </a>
    -><c:out value ="${task.content}"></c:out>
</li>
</c:forEach>
</ul>
<a href="${pageContext.request.contextPath}/New">タスク追加</a>
</c:param>
</c:import>