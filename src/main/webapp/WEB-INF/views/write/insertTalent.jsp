<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	ī�װ� <select id="select-cate-main" name="cate-main">
			<option value="null">ī�װ� ����</option>
			<c:forEach items="${mainCates }" var="cate">
				<option value="${cate.cate_main }">${cate.cate_main }</option>
			</c:forEach>
		</select> <br>

		<select id="select-cate-sub" name="cate-sub">
			<option value="null">���� ī�װ� ����</option>
		</select> <br>
		
		
	���� <input type="text" /> <br>
	���� <input type="text" /> <br>
	�۾��� <input type="text" /> <br>
	�ɼ� <input type="text" /> <br>
	�̹��� <input type="text" /> <br>
	�󼼳��� <input type="text" /> <br>
	������ ���û��� <input type="text" /> <br>
	
	<script src="/jj9/resources/js/insertTalent.js"></script>
</body>
</html>