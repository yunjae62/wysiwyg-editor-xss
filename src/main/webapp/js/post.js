document.addEventListener('DOMContentLoaded', function () {
  $('#content').summernote({
    height: 300, // 에디터 높이
    minHeight: null, // 최소 높이
    maxHeight: null, // 최대 높이
    focus: true, // 에디터 로딩후 포커스를 맞출지 여부
    lang: "ko-KR", // 한글 설정
  });
});