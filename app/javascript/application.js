// jQuery (build correto para Bootstrap 4)
import "jquery/dist/jquery.js"
import $ from "jquery"

window.$ = $
window.jQuery = $

// Popper (Bootstrap 4 depende)
import Popper from "popper.js"
window.Popper = Popper

// Bootstrap JS (precisa vir depois do jQuery)
import "bootstrap"

// Turbo
import "@hotwired/turbo-rails"

// Seus scripts (NÃO importe jquery neles!)
import "./comment_toggle"
import "./like_toggle"
