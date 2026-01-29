document.addEventListener("turbo:load", function () {
  $(".comments-toggle").on("click", function () {
    $(this).closest(".card").next(".comments-list").toggle()
  })
})
