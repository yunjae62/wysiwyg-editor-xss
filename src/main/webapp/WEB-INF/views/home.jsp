<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>게시글 목록</title>
    <style>
      table {
        border-collapse: collapse;
        width: 100%;
      }

      th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
      }

      th {
        background-color: #f2f2f2;
      }

      .btn {
        padding: 5px 10px;
        margin: 2px;
        text-decoration: none;
      }

      .btn-view {
        background-color: #007bff;
        color: white;
      }

      .btn-edit {
        background-color: #28a745;
        color: white;
      }
    </style>
</head>
<body>
<h1>게시글 목록</h1>

<table>
    <thead>
    <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작업</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="post" items="${posts}">
        <tr>
            <td>${post.id}</td>
            <td>
                <a href="/posts/${post.id}" class="btn btn-view"><c:out value="${post.title}"/></a>
            </td>
            <td>
                <a href="/posts/${post.id}/edit" class="btn btn-edit">수정</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<c:if test="${empty posts}">
    <p>등록된 게시글이 없습니다.</p>
</c:if>

<div style="margin-top: 20px;">
    <a href="/posts/new" class="btn btn-view">새 글 작성</a>
</div>
</body>
</html>