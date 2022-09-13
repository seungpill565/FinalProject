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
<style type="text/css">
.show-page>li {
	list-style: none;
	float: left;
	padding: 6px;
}

.pageInfo {
	list-style: none;
	display: inline-block;
	margin: 50px 0 0 100px;
}

.pageInfo li {
	float: left;
	font-size: 20px;
	margin-left: 18px;
	padding: 7px;
	font-weight: 500;
}

a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: black;
	text-decoration: underline;
}
.active{
      background-color: #cdd5ec;
  }
</style>

</head>
<body>
	<h1><a href="../mainpage">jj9</a></h1>
	
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
<!-- 
	<div>��� ��� <br />  ����¡ ���� ī�װ��� ��� ǥ�� 
		<c:forEach items="${purchases }" var="purchase">
			<div>
				<span>
					<a href="../purchase/${purchase.talent_id }">
					 	${purchase.talent_title } <br />
					 	���� : ${purchase.talent_price }
					 	�Ǹ��� : ${purchase.member_id } <br />
					 	cate_id : ${purchase.cate_id } <br />
					 	��� ��ȣ : ${purchase.talent_id } <br />
					 </a>
				</span> 
			</div><br />
		</c:forEach>
		
	</div>
	  -->
	
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