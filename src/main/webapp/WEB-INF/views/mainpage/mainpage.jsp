<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jj9</title>
</head>
<body>

	<h3>jj9 ���� ������</h3>

	<div>ī�װ� �׽�Ʈ�� <br />
		<ul> ��ü ī�װ�  <br />
			<c:forEach items="${categorys }" var="category">
				<li><a href="category/${category.cate_id }">${category.cate_main }</a></li>
			</c:forEach>
		</ul>
	</div>

	<br />

	<div>
		�α��� �׽�Ʈ ��<br />
		<a href="">�α���</a> <br />
		<a href="">ȸ������</a>
	</div>
	
	<br />
	
	<div>
		��� �Ƿ� ��� �׽�Ʈ ��<br />
		<a href="">��� �Ƿ� </a> <br />
	</div>
	
	<br />
	
	<div>
		best ��� 4��<br />
		<a href="">best1</a>
		<a href="">best2</a> <br />
		<a href="">best3</a>
		<a href="">best4</a> <br />
	</div>
	
	<br />
	
	<div>
		new ��� 4��<br />
		<a href="">new1</a>
		<a href="">new2</a> <br />
		<a href="">new3</a>
		<a href="">new4</a> <br />
	</div>
	
	<br />
	
	<div>
	
		footer �κ�
		
	</div>
	
<script>

</script>
</body>
</html>