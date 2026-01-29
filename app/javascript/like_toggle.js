document.addEventListener("turbo:load", function () {
  $(".like-toggle").on("click", function () {
    const button = $(this)

    $.ajax({
      type: "POST",
      url: `/user/posts/${button.attr("id")}/like_toggle`,
      success: function (data) {
        toggleButton(button, data)
      }
    })
  })

  function toggleButton(button, data) {
    const buttonIcon = button.children().first()

    if (data.liked === true) {
      buttonIcon.css("color", "#80c0ff")
    } else {
      buttonIcon.css("color", "#ffffff")
    }

    button.next().html(data.likesCount)
  }
})
