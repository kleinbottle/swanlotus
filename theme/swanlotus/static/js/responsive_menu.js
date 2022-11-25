// Requires jQuery
// Using JavaScript example from https://bulma.io/documentation/components/navbar/#navbar-menu
$(document).ready(function() {
    // Check for click events on the navbar burger icon
    $("#navBurger").click(function() {

        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        $("#navBurger").toggleClass("is-active");
        $("#navMenu").toggleClass("is-active");
    });

    $("#tocBurger").click(function(){
        $("#mobile-contents").toggleClass("is-hidden");
        if ($("#mobile-contents").is(":hidden") === true) {
            $("#tocBurger").attr("title", "Expand contents")
        } else if ($("#mobile-contents").is(":visible") === true) {
            $("#tocBurger").attr("title", "Collapse contents")
        }
    });
});
