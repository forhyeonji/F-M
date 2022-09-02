$(function() {
    $(".btn_delete").on("click",function(){
        let confirmflag = confirm("진짜 삭제함?");

        if(confirmflag == true){
            alert("삭제되었습니다.")
            boardDelete();
            location.href = "/community/bread"
        }
    })
    const onWriteCancel = () => {
        $("#btn_write_cancel").click(() => {
            location.href = `/community/bread`;
        })
    }
    const onWrite = () => {
        $("#b_write_btn").click(() => {
            let title = $(".b_title").val();
            let context = $(".b_text").val();
            let id = $("#user_id").val();

            $.ajax({
                url: "/community/write",
                type: "post",
                data:  JSON.stringify({"title":title,"context":context,"user_id":id}),
                contentType: "application/json; charset=utf-8",
            })
            location.href = `/detail/${bno}`;
        })
    }

    onWriteCancel();
    onWrite();
})
