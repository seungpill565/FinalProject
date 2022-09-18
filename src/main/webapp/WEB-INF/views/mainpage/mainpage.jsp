<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jj9</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script> <!--  jquery -->
<style>
.bestNew {
    display: flex;
    padding-left: 5px;
    padding-right: 5px;
}

.bestNew > * {
    
    padding: 30px;
}

</style>
</head>
<body>

	<h1><a href="mainpage">jj9</a> ���� ������</h1>

	<div>
		��� �κ� <br />
		<div>
			�α��� �׽�Ʈ ��<br /> <a href="">�α���</a> <br /> <a href="">ȸ������</a>
		</div>
		
		<br />

<!-- �˻� ��� -->
		<div class="search_wrap">
			<div class="search_area">
				<form id="mainSearchForm" name="searchForm" method="get">
					<input type="text" id="searchKeyword" name="keyword" value="${page.cri.keyword }" placeholder="����̳� �������� �˻��ϼ���.">
						<button>Search</button>
					
					<input type="hidden" name="pageNum" value="${page.cri.pageNum }">
					<input type="hidden" name="amount" value="${page.cri.amount }">
				</form>
			</div>
		</div>
<!-- /�˻� ��� -->
	
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
	
	<div class="bestNew">
	
	
	<div><h3>BEST ���</h3>
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
	
	
	<div><h3>NEW ���</h3>
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
	
	</div>
	
	<br />
	
	<hr />
	<!-- footer -->
	<div>
	
		footer �κ�
		
	</div>
	
<script src="/jj9/resources/js/category.js?ver=1"></script>

</body>
</html>