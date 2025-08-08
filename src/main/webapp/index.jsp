<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>간단한 HTML 예제</title>
    <style>
        /* 간단한 스타일 */
        body { font-family: system-ui, -apple-system, 'Segoe UI', Roboto, 'Noto Sans KR', sans-serif; margin: 0; padding: 0; display: grid; place-items: center; min-height: 100vh; background: linear-gradient(180deg,#f7fbff,#eef6ff); }
        .card { background: white; padding: 1.5rem; border-radius: 12px; box-shadow: 0 6px 20px rgba(20,30,60,0.08); width: 360px; }
        h1 { margin: 0 0 0.5rem 0; font-size: 1.25rem; }
        p { margin: 0 0 1rem 0; color: #444; }
        .btn { display:inline-block; padding:0.5rem 0.9rem; border-radius:8px; border:none; cursor:pointer; background:#2563eb; color:white; }
        input[type="text"] { width:100%; padding:0.5rem; margin-bottom:0.75rem; border-radius:8px; border:1px solid #ddd; }
        footer { margin-top:1rem; font-size:0.85rem; color:#666; text-align:center; }
    </style>
</head>
<body>
<main class="card">
    <h1>간단한 HTML 데모</h1>
    <p>이 페이지는 HTML, CSS, JavaScript의 기본 동작을 보여주는 예제입니다.</p>

    <!-- 이름 입력 폼 -->
    <label for="name">이름</label>
    <input id="name" type="text" placeholder="이름을 입력하세요" />
    <button id="greetBtn" class="btn">인사하기</button>

    <!-- 카운터 -->
    <div style="margin-top:1rem">
        <strong>클릭 횟수:</strong> <span id="count">0</span>
        <button id="incBtn" class="btn" style="margin-left:0.5rem; padding:0.35rem 0.6rem;">+</button>
    </div>

    <footer>
        만든 사람: 당신 • 간단한 예제
    </footer>
</main>

<script>
    // 인사 버튼 동작
    document.getElementById('greetBtn').addEventListener('click', function () {
        const name = document.getElementById('name').value.trim();
        if (name) alert(`${name}님, 안녕하세요!`);
        else alert('이름을 입력해 주세요.');
    });

    // 카운터 동작
    let count = 0;
    const countEl = document.getElementById('count');
    document.getElementById('incBtn').addEventListener('click', function () {
        count += 1;
        countEl.textContent = count;
    });
</script>
</body>
</html>
