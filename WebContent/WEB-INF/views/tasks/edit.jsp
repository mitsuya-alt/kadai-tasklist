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
<a href ="#" onclick="confirmDestroy();">このメッセージを削除する</a>
<form method ="post" action ="${pageContext.request.contextPath}/Destroy">
<input type ="hidden" name ="token" value="${token}"/>
</form>
<script>
function confirmDestroy(){
    if(confirm("本当に削除してよろしいですか?")){
        document.forms[1].submit();
    }
}
</script>
</c:param>
</c:import>