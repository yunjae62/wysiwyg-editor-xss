<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>게시글 수정</title>
    <style>
      .form-container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
      }

      .form-group {
        margin-bottom: 15px;
      }

      label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
      }

      input[type="text"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #ddd;
      }

      textarea {
        width: 100%;
        height: 300px;
        padding: 8px;
        border: 1px solid #ddd;
      }

      .btn {
        padding: 10px 20px;
        margin: 5px;
        text-decoration: none;
        border: none;
        cursor: pointer;
      }

      .btn-primary {
        background-color: #007bff;
        color: white;
      }

      .btn-secondary {
        background-color: #6c757d;
        color: white;
      }

      .btn-danger {
        background-color: #dc3545;
        color: white;
      }
    </style>
</head>
<body>
<div class="form-container">
    <h1>게시글 수정</h1>

    <form action="/posts/${post.id}/edit" method="post">
        <div class="form-group">
            <label for="title">제목</label>
            <input type="text" id="title" name="title" value="${post.title}" required>
        </div>

        <div class="form-group">
            <label for="content">내용</label>
            <textarea id="content" name="content" required>${post.content}</textarea>
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-primary">수정 완료</button>
            <a href="/posts/${post.id}" class="btn btn-secondary">취소</a>
        </div>
    </form>
</div>
</body>
</html>