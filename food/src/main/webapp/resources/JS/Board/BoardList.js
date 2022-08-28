$(function(){
boardList();
})

function boardList(){
    $.ajax({
        url:"/community/bread",
        type:"post",
        success : function(data){
            let str = "";
            for(let i = 0; i<data.length; i++){

                str += "<tr><td class='b_list'>" + data[i].bno + "</td>"
                str += "<td class='b_list blist_title'><a href='detail?bno="
                        + data[i].bno + "'>" + data[i].title + "</a></td>"
                str += "<td class='b_list'>" + data[i].cnt + "</td>"
                str += "<td class='b_list'>" + data[i].mod_dt + "</td>"
                str += "<td class='b_list'>" + data[i].user_id + "</td></tr>"
            }
            $("#b_tbody").html(str);
        }
    })
}