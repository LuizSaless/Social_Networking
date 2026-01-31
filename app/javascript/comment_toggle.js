import $ from "jquery";

$(document).on("turbo:load", function () {

  $(".comments-toggle").off("click").on("click", function (e) {
    e.preventDefault();

    const postId = $(this).data("post-id");
    const commentsList = $("#comments-" + postId);

    if (commentsList.length) {
      commentsList.toggleClass("d-none");
    }
  });

});
