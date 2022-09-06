$(function () {
    const onForm = () => {
        if (!confirm('등록하시겠습니까'))
            return;

        let title = $("#title").val();
        let context = $("#summernote").val();
        let id = $("#user_id").val();
        $.ajax({
            url: "/community/write",
            type: "post",
            data: JSON.stringify({"title": title, "context": context, "user_id": id}),
            contentType: "application/json; charset=utf-8",
            success: (data) => {
                if (data.code !== 'SUCCESS')
                    return;

                alert("등록되었습니다.");
                location.href = `/detail/${bno}`;
            },
            error: (error) => {
                console.error(error)
            }
        });
    }

    const isDefault = () => {
        $('#summernote').summernote({
            placeholder: '내용을 입력해주세요.',
            height: 300,
            minHeight: 300,
            maxHeight: 500,
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'underline', 'clear']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['table', ['table']],
                ['insert', ['picture']],
            ]
        });

        $('#btn_write_cancel').click(() => location.href = '/community/bread');
        $('#b_write_btn').click(() => onForm());
    }

    isDefault();
});
