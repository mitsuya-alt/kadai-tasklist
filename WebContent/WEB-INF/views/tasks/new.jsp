<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
<c:param name ="content">
<h2>タスク追加ページ</h2>
<form action = "${pageContext.request.contextPath}/Create" method = "Post">
<c:import url ="../layout/_form.jsp"/>


</form>
<p><a href="<c:url value='/Index'/>">一覧へ戻る</a></p>
</c:param>
</c:import>
