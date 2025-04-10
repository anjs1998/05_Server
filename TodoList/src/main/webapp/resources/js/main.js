//제목이 작성되지 않은 경우 form 제출 막기

const addForm=document.querySelector("#addForm");

const title=document.querySelector("[name=title]"); //input 태그

//addForm이 제출될 때
addForm.addEventListener("submit",(e) => {

    //e : 이벤트객체
    //제목 입력된 값 가져와서 양쪽 공백 제거

    const input = title.value.trim();


    if(input.length === 0){
        // form 태그 제출 이벤트 막기
        e.preventDefault();
        alert("제목을 입력해주세요!!");
        title.focus();
    }
});


const logout = document.querySelector("#logout");


logout.addEventListener("click", () => {
    location.href="/logout";

})