// 목록으로 버튼 클릭 시 "/" 이동(Get 요청)
const goToList = document.querySelector("#goToList");

// 목록으로 버튼이 클릭될 경우
goToList.addEventListener("click", ()=>{
    // "/" 메인페이지 요청(GET 방식)
    location.href = "/" // 현재 주소를 최상위 주소로 이동
});




//할일 상세 조회 페이지에서 퀴리스트링 값 얻어오기
// url에서 얻어오면 된다.(쿼리스트링 부분: 주소?todoNo=6)

// location.search : 쿼리스트링만 얻어오기
// URLSearchParams(location.search) : 쿼리스트링을 객체 형태로 다룰 수 있는 객체

const todoNo = new URLSearchParams(location.search).get("todoNo");

//console.log(todoNo);
// 완료 여부 변경
const completeBtn = document.querySelector("#completeBtn");
completeBtn.addEventListener("click", () => {


    
});

// 삭제 버튼
// 수정 버튼 




