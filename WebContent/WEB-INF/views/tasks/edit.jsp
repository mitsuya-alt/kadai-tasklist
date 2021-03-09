<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url ="../layout/app.jsp">
<c:param name ="content" >
<h2>id:<c:out value="${task.id}"></c:out>のタスク編集ページ</h2>
<form action ="${pageContext.request.contextPath}/Update" method ="post">
<c:import url="../layout/_form.jsp">
</c:import>
</form>
<a href ="${pageContext.request.contextPath}/Index">一覧に戻る</a>
</c:param>
</c:import>