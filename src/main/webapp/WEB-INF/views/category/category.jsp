<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>category</title>
</head>
<body>
	<h1><a href="../mainpage">jj9</a></h1>

	<h3>category </h3>
	
	<div>
		<ul>
			<c:forEach items="${categorys }" var="category">
				<li><a href="${category.cate_id }" id="${category.cate_id }">${category.cate_id } / ${category.cate_main } / ${category.cate_sub } </a></li>
			</c:forEach>
		</ul>
	</div>
	

	<div>
		<ul>
			<c:forEach items="${categorys }" var="category">
				<li><a href="${category.cate_id }" id="${category.cate_id }">${category.cate_id } / ${category.cate_main } / ${category.cate_sub } </a></li>
			</c:forEach>
		</ul>
	</div>
	
	


	<div>
		<c:forEach items="${purchases }" var="purchase">
			<div>
				<span>
					<a href="../purchase/${purchase.talent_id }">
					 	${purchase.talent_title } <br />
					 	���� : ${purchase.talent_price }
					 	�Ǹ��� : ${purchase.member_id } <br />
					 	cate_id : ${purchase.cate_id }
					 </a>
				</span> 
			</div><br />
		</c:forEach>
		
	</div>
	
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
	

	<script src="/jj9/resources/js/category.js"></script>
</body>
</html>