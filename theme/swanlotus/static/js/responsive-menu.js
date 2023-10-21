// Requires jQuery
// Using JavaScript example from https://bulma.io/documentation/components/navbar/#navbar-menu
$(document).ready(function () {
    // Check for click events on the navbar burger icon
    $("#nav-small-screens").click(function () {

        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        $("#nav-small-screens").toggleClass("is-active");
        $("#nav-ribbon-menu").toggleClass("is-active");
    })
});
