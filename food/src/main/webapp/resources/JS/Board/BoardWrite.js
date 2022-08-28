$(function() {
    $(".btn_write").on("click", function (){
        boardWrite();
    })
})

function boardWrite(){
    let title = $(".b_title").val();
    let context = $(".b_text").val();
    if(title == ""){
        title = "a";
    }
    $.ajax({
        url: "/community/write",
        type: "post",
        data:  JSON.stringify({"title":title,"context":context}),
        dataType:"json",
        contentType: "application/json; charset=utf-8",
        success:function(){
            boardList();
        }
    })
}