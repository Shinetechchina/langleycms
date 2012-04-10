
//document.getElementById("book_ski").checked=true;


//
//$(document).ready(function(){
//
//    $(".book_ski").attr("checked","checked");
//
//
//    alert($("#book_confirm").text());
//    $("#book_confirm").append("test");
//
//    $("input[name=book_type]").change(function(){
//        alert($("input[name=book_type].[checked]").val());
//
//
//
//        var cardName = $("input[name=book_type].[checked]").val();
//            var cardCreatedOn = $("#startDt").val();
//        $.ajax({
//
//            type: "post", //提交方式
//            cache: false,
//            url: "./boka-resa",         //提交地址
//            dataType: "json",
//            // data: "name=" + cardName + "&date=" + cardCreatedOn, //提交的数据
//            //data: "name=伊牛娃&date=2009-05-20",//如果只需要传固定值的话，可以直接这样写
//            data: cardName,
//            success: function (msg) {//根据返回状态，给出相关提示
//
//
//
//            }
//        });
//
//
//
//    });
//
//});


$(document).ready(function(){
    var book_type = ($("#book_type").attr("name"));
    var weeks = ($("#weeks").attr("name"));
    var adults = ($("#adults").attr("name"));
    var children = ($("#children").attr("name"));

    //alert(weeks);
    $("."+book_type.toLowerCase()).attr("checked","checked");
    $("#week").val(weeks);
    $("#adult").val(adults);
    $("#child").val(children);


//    $.ajax({
//       type: "get",
//        url: "../articles/1",
//        dataType: "json",
//        success:function(json){
//            alert("n")
//            alert(json["id"])
//
//        }
//
//    });
});














