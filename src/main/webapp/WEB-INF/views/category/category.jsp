<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>category</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script> <!--  jquery -->
<link rel="stylesheet" href="/jj9/resources/css/category.css?ver=1" />

</head>
<body>
	<h1><a href="/jj9/mainpage" class="jj9-mainpage">jj9</a></h1>
	
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
	</div>
	
	<br />


	<h3>category </h3>
	<div>
		<span>���� ī�װ�
			<ul>
				<c:forEach items="${maincategorys }" var="maincategory">
					<li><a href="${maincategory.cate_id }" id="${maincategory.cate_id }">${maincategory.cate_id }
							/ ${maincategory.cate_main } / ${maincategory.cate_sub } </a></li>
				</c:forEach>
			</ul>
		</span> <span>���� ī�װ�
			<ul>
				<c:forEach items="${subcategorys }" var="subcategory">
					<li><a href="${subcategory.cate_id }" id="${subcategory.cate_id }">${subcategory.cate_id }
							/ ${subcategory.cate_main } / ${subcategory.cate_sub } </a></li>
				</c:forEach>
			</ul>
		</span>
	</div>
	
	<br />
	
	<br /><br />
	

	<div>
		<table>
			<tr>
				<th>��ȣ</th>
				<th>��ɹ�ȣ</th>
				<th>����</th>
				<th>�ۼ���</th>
				<th>�����</th>
			</tr>

			<c:forEach items="${purchases}" var="list">
				<tr>
					<td><c:out value="${list.rn}" /></td>
					<td><c:out value="${list.talent_id}" /></td>
					<td><a href="../purchase/${list.talent_id}"><c:out
								value="${list.talent_title}" /></a></td>
					<td><c:out value="${list.member_id}" /></td>
					<td><fmt:formatDate value="${list.talent_date}"
							pattern="yy-MM-dd" /></td>
				</tr>
			</c:forEach>
		</table>
		
		<div class="pagInfo-wrap">
			<div class="pageInfo-area">
				<ul id="pageInfo" class="pageInfo">

					<!-- ���������� ��ư -->
					<c:if test="${page.prev}">
						<li class="pageInfo_btn previous">
							<a href="${page.startPage-1}">����</a> <!-- 11~20 �������� �����ִٸ� ���� ��ư Ŭ�� �� 11-1 �������� �̵� -->
						</li>
					</c:if>
					<!-- �� ��ȣ ������ ��ư -->
					<c:forEach var="num" begin="${page.startPage}" end="${page.endPage}">
                    <li class="pageInfo_btn ${page.cri.pageNum == num ? "active":"" }"> <!-- ���� Ŭ���� ������ ��ȣ�� ���� �ֱ� -->
                             		<a href="${num }">${num}</a></li>

                </c:forEach>

					<!-- ���������� ��ư -->
					<c:if test="${page.next}">
						<li class="pageInfo_btn next">
							<a href="${page.endPage + 1 }">����</a> <!--  11~20 �������� �����ִٸ� ���� ��ư Ŭ�� �� 20+1 �������� �̵� -->
						</li>
					</c:if>

				</ul>
			</div>
		</div>
		<form id="moveForm" method="get">
			<input type="hidden" name="pageNum" value="${page.cri.pageNum }">
        	<input type="hidden" name="amount" value="${page.cri.amount }">
        </form> 
	</div>
	



	<br />
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
	

	<script src="/jj9/resources/js/category.js"></script>

</body>
</html>