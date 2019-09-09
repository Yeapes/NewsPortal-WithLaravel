$(document).on("click", ".modal-delete", function () {
    $(".postname").html($(this).data("post_title"));
    $(".postid").html($(this).data("id"));
    $("#postdelete").modal("show");

});
$(".modal-footer").on("click", ".deletepost", function () {
    $.ajax({
        type: "POST",
        url: "http://localhost/newsPortal/public/deletepost",
        data: {
            "_token": $("input[name=_token]").val(),
            "id": $(".postid").text()
        },
        success: function (data) {
            alert("succesfully deleted!!!")

        }

    });

});