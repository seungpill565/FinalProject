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
<link rel="stylesheet" href="/jj9/resources/css/category.css?ver=1" />
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

	<h1><a href="mainpage" class="jj9-mainpage">jj9</a></h1>

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
				
				<!-- 
					<select name="type">
						<option value=""
							<c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
						<option value="T"
							<c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>����</option>
						<option value="C"
							<c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>����</option>
						<option value="W"
							<c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>�ۼ���</option>
					</select> 
				 -->	
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
	
	<!-- footer1 -->
	
	<footer>
		<hr /> 
		<div class="footer1-wrap">
			<nav class="footer1-menu">
				<div class="footer1-menus">
					<p class="footer1-menus-cs">������</p>
					<p class="footer1-menus-workTime">09:00~18:00 (���ɽð� 13:00~14:00)</p>
					<p class="footer1-menus-holiday">�ָ�, ������ �޹�</p>
					<a role="link" color="default" href="" class="footer1-menus-requestLink">
						<span class="footer1-menus-request">1:1 ����</span>
					</a>
				</div>
				
				<div class="footer1-menus">
					<p class="footer1-menus-title">jj9</p>
					<ul class="footer1-menus-ul">
						<li class="footer1-menus-li">jj9 ����</li>
						<li class="footer1-menus-li">Prime</li>
						<li class="footer1-menus-li">������������</li>
						<li class="footer1-menus-li">��������Ŭ��</li>
					</ul>
				</div>
				
				<div class="footer1-menus">
					<p class="footer1-menus-title">jj9 ����</p>
					<ul class="footer1-menus-ul">
						<li class="footer1-menus-li">���� �Ұ�</li>
						<li class="footer1-menus-li">���翵��</li>
					</ul>
				</div>

				<div class="footer1-menus">
					<p class="footer1-menus-title">���� ����Ʈ</p>
					<ul class="footer1-menus-ul">
						<li class="footer1-menus-li">jj9 ��α�</li>
						<li class="footer1-menus-li">jj9 �ν�Ÿ�׷�</li>
						<li class="footer1-menus-li">jj9 ��Ʃ��</li>
					</ul>
				</div>
				
				<div class="footer1-menus">
					<p class="footer1-menus-title">����</p>
					<ul class="footer1-menus-ul">
						<li class="footer1-menus-li">��������</li>
						<li class="footer1-menus-li">���� ���� ����</li>
						<li class="footer1-menus-li">�̿���</li>
						<li class="footer1-menus-li">��������ó����ħ</li>
						<li class="footer1-menus-li">������ ����</li>
					</ul>
				</div>
	
			
			</nav>
		</div>
	<!-- footer2 -->
	
		<hr /> 
		<div class="footer2-area1">
			<p class="footer2-area1-content">
				(��)jj9 | 
				
				���� : �Ƚ��� | 
				
				����Ʈ ������ : �����, �赵��, ȫ����, �ڼ��� |
				
				������ : 1234-5678 | 
				
				help@jj9
			</p>
		</div>
		
		<div class="footer2-area2">
			<p class="footer2-area2-content1">(��)jj9�� ������ ������Ʈ�� ���� ������� ����Ʈ�Դϴ�. ���� ���񽺰� �ƴ��� ������ �ֽñ� �ٶ��ϴ�.</p>
			<div class="footer2-area2-content2">
				<p class="footer2-area2-content2-p">Copyright @ 2022 jj9 Inc. All rights reserved.</p>
			</div>
		</div>
	</footer>
	
<script src="/jj9/resources/js/category.js?ver=1"></script>

</body>
</html>