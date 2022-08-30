$(function() {

    $(".b_write_btn").on("click", function (){
        boardWrite();
    })
    $(".btn_modify").on("click", function (){
        boardModify();
    })
    $(".btn_delete").on("click",function(){
        let confirmflag = confirm("진짜 삭제함?");

        if(confirmflag == true){
            alert("삭제되었습니다.")
            boardDelete();
            location.href = "/community/bread"
        }
    })
})

function boardWrite(){
    let title = $(".b_title").val();
    let context = $(".b_text").val();
    let id = $("#userId").val();

    $.ajax({
        url: "/community/write",
        type: "post",
        data:  JSON.stringify({"title":title,"context":context,"user_id":id}),
        dataType:"json",
        contentType: "application/json; charset=utf-8",
        success:function(){
            boardList();
        }
    })
}

function boardModify(){
    let title = $("#modify_title").val();
    let context = $("#modify_context").val();
    let bno = $("#b_bno").val();
    $.ajax({
        url: "/community/modify",
        type: "post",
        data:  JSON.stringify({"bno":bno,"title":title,"context":context}),
        contentType: "application/json; charset=utf-8",
        success:function (){
            window.location = document.referrer;
        }
    })
}

function boardDelete(){
    let bno = $("#b_bno").val();
    $.ajax({
        url:"/community/delete",
        type:"post",
        data:JSON.stringify({"bno":bno}),
        contentType: "application/json; charset=utf-8"
    })
}

