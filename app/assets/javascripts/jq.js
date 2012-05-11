

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
});














