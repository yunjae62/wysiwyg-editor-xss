<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>게시글 상세</title>
    <style>
      .post-container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
      }

      .post-header {
        border-bottom: 2px solid #ddd;
        padding-bottom: 15px;
        margin-bottom: 20px;
      }

      .post-title {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 10px;
      }

      .post-info {
        color: #666;
        font-size: 14px;
      }

      .post-content {
        min-height: 300px;
        padding: 20px;
        border: 1px solid #ddd;
        background-color: #f9f9f9;
        line-height: 1.6;
        margin-bottom: 20px;
      }

      .btn-group {
        text-align: center;
      }

      .btn {
        padding: 10px 20px;
        margin: 5px;
        text-decoration: none;
        border: none;
        cursor: pointer;
        border-radius: 4px;
      }

      .btn-primary {
        background-color: #007bff;
        color: white;
      }

      .btn-success {
        background-color: #28a745;
        color: white;
      }

      .btn-danger {
        background-color: #dc3545;
        color: white;
      }

      .btn-secondary {
        background-color: #6c757d;
        color: white;
      }
    </style>
</head>
<body>
<div class="post-container">
    <div class="post-header">
        <div class="post-title">${post.title}</div>
        <div class="post-info">게시글 번호: ${post.id}</div>
    </div>

    <div class="post-content">
        ${post.content}
    </div>

    <div class="btn-group">
        <a href="/" class="btn btn-secondary">목록</a>
        <a href="/posts/${post.id}/edit" class="btn btn-success">수정</a>
    </div>
</div>
</body>
</html>