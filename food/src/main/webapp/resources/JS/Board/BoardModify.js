$(function(){
    const mColumns = ["bno", "title", "context", "user_id"];

    const boardModify = () => {
        $.ajax({
            type: 'GET',
            url: `/api/modify/${bno}`,
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
    boardModify();
})
