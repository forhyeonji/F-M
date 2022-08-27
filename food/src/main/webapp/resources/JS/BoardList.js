$(function(){
    $.ajax({
        url:"/community/bread",
        type:"post",
        success : function(data){
            console.log(data);
            let str = "";
           for(let i = 0; i<data.length; i++){

                str += "<tr><td>" + data[i].bno + "</td>"
                str += "<td>" + data[i].title + "</td>"
                str += "<td>" + data[i].cnt + "</td>"
               str += "<td>" + data[i].mod_dt + "</td>"
                str += "<td>" + data[i].user_id + "</td></tr>"
            }
            $("#b_tbody").html(str);
        }
    })
})

