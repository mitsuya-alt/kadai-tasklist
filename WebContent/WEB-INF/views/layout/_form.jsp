<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<label>内容<br/><textarea name="content" >${task.content}</textarea></label>
<input type ="hidden" name ="token" value="${token}"/><br/>
<input type ="submit" value="${message}"/>
