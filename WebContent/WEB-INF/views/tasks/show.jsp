<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url ="../layout/app.jsp">
<c:param name="content">
<h2>id:<c:out value="${task.id}"></c:out>のタスク詳細ページ</h2>
<p>内容:<c:out value="${task.content}"></c:out></p>
<p>作成日時：<fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
<p>更新日時：<fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
<a href="${pageContext.request.contextPath}/Index">一覧に戻る</a>
<a href="${pageContext.request.contextPath}/Edit?id=${task.id}">編集する</a>
</c:param>
</c:import>