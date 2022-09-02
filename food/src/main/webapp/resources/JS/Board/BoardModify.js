$(function(){
    const mColumns = ["bno", "title", "context", "user_id"];

    const boardModify = () => {
        $.ajax({
            type: 'GET',
            url: `/api/write/${bno}`,
            success: (response) => {
                if(response.code !== 'SUCCESS')
                    return;

                mColumns.map((key)=> $(`#${key}`).val(response.result.data[key]));
            },
            error: (error) => {
                console.error(error)
            }
        });
    }
    const onModifyCancel = () => {
        $("#btn_modify_cancel").click(() => {
            location.href = `/detail/${bno}`;
        });
    }
    const onModify = () => {
        $("#btn_BoardModify").click(() => {
            $.ajax({
                type:'PUT',
                url: `/modify/${bno}`,
                data: JSON.stringify({title:$("#title").val(),context:$("#context").val()}),
                contentType: "application/json; charset=utf-8",
                success: (data) => {
                    location.href = `/detail/${bno}`
                }
            })
        })
    }


    boardModify()
    onModifyCancel();
    onModify()
})
