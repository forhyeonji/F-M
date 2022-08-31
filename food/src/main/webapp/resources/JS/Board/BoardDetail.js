$(function(){
    const dColumns = ["bno", "title", "context", "user_id"];

    const boardDetail = () => {
        $.ajax({
            type: 'GET',
            url: `/api/bread/${bno}`,
            success: (response) => {
                if(response.code !== 'SUCCESS')
                    return;

                dColumns.map((key)=> $(`#${key}`).val(response.result.data[key]));
            },
            error: (error) => {
                console.error(error)
            }
        });
    }
    boardDetail();
})
