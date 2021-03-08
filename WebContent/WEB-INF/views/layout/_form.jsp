<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<label>内容<br/><input type="text" name="content" value="${task.content}" /></label>
<input type ="hidden" name ="token" value="${token}"/>
<input type ="submit" value="追加する"/>
