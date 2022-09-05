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

	<h1><a href="mainpage">jj9</a> ���� ������</h1>

	<div>
		��� �κ� <br />
		<div>
			�α��� �׽�Ʈ ��<br /> <a href="">�α���</a> <br /> <a href="">ȸ������</a>
		</div>
		
		<br />

		<div>
			<form action="">
				<input type="text" name="search" placeholder="����̳� �������� �˻��ϼ���." />
				<input type="submit" value="�˻�" />
			</form>
		</div>

	</div>
	
	<br />

	<h3>ī�װ� �׽�Ʈ��</h3>
	<div>
		<ul> ��ü ī�װ�  <br />
			<c:forEach items="${categorys }" var="category">
				<li><a href="category/${category.cate_id }">${category.cate_main }</a></li>
			</c:forEach>
		</ul>
	</div>


	
	<br />
	
	<div>
		��� ��� �׽�Ʈ ��<br />
		<a href="">��� ��� </a> <br />
	</div>
	
	<div>
		��� �Ƿ� �׽�Ʈ ��<br />
		<a href="">��� �Ƿ� </a> <br />
	</div>
	
	<br />
	
	<h3>BEST ���</h3>
	<div>
		<c:forEach items="${bestpurchases }" var="bestpurchase">
			<span>
					<a href="purchase/${bestpurchase.talent_id }">
					 	${bestpurchase.talent_title } <br />
					 	
					 	���� : ${bestpurchase.talent_price }
					 	�Ǹ��� : ${bestpurchase.member_id } 
					 	�Ǹ� Ƚ�� : ${bestpurchase.talent_paycount } <br />
					 	cate_id : ${bestpurchase.cate_id } <br />
					 	��� ��ȣ : ${bestpurchase.talent_id } <br />
					 </a>
				</span> 
				<br />
				<br />
		</c:forEach>
		
	</div>
	
	<br />
	
	<h3>NEW ���</h3>
	<div>
		<c:forEach items="${newpurchases }" var="newpurchase">
			<span>
					<a href="purchase/${newpurchase.talent_id }">
					 	${newpurchase.talent_title } <br />
					 	
					 	���� : ${newpurchase.talent_price }
					 	�Ǹ��� : ${newpurchase.member_id } 
 						�Ǹ� Ƚ�� : ${newpurchase.talent_paycount } <br />
					 	cate_id : ${newpurchase.cate_id } <br />
					 	��� ��ȣ : ${newpurchase.talent_id } <br />
					 </a>
				</span> 
				<br />
				<br />
		</c:forEach>
		
	</div>
	
	<br />
	
	<div>
	
		footer �κ�
		
	</div>
	
<script>

</script>
</body>
</html>