// $(function () {
//     const mColumns = ["bno", "title","context", "user_id"];
//
//     const boardModify = () => {
//         $.ajax({
//             type: 'GET',
//             url: `/api/write/${bno}`,
//             success: (response) => {
//                 if (response.code !== 'SUCCESS')
//                     return;
//
//                 if (response.result.data != null) {
//                     mColumns.map((key) => $(`#${key}`).val(response.result.data[key]));
//
//                     let button = `<button type="button" id="btn_BoardModify" class="btn_write">수정하기</button>
//                              <button type="button" id="btn_modify_cancel" class="btn_write">취소</button>`
//
//                     $("#bw_foot").html(button);
//                 }
//                 const onModifyCancel = () => {
//                     $("#btn_modify_cancel").click(() => {
//                         location.href = `/detail/${bno}`;
//                     });
//                 }
//
//                 const onModify = () => {
//
//                     $("#btn_BoardModify").click(() => {
//
//                         let jsondata = {
//                             "title": $("#title").val(),
//                             "context": $("#context").val()
//                         }
//                         console.log(bno);
//                         $.ajax({
//                             type: 'put',
//                             url: `/modify/${bno}`,
//                             data: JSON.stringify(jsondata),
//                             contentType: "application/json; charset=utf-8",
//                             success: () => {
//                                 alert("수정되었습니다.");
//                                 location.href = `/detail/${bno}`
//                             }
//                         })
//                     })
//                 }
//
//                 onModifyCancel();
//                 onModify();
//             },
//             error: (error) => {
//                 console.error(error)
//             }
//         });
//     }
//     boardModify();
// })
