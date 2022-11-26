// Requires jQuery
// Using JavaScript example from https://bulma.io/documentation/components/navbar/#navbar-menu
$(document).ready(function () {
    // Check for click events on the navbar burger icon
    $("#nav-small-screens").click(function () {

        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        $("#nav-small-screens").toggleClass("is-active");
        $("#nav-ribbon-menu").toggleClass("is-active");
    });

    $("#toc-small-screens").click(function () {
        // Show or hide the table of contents on mobile devices when
        // burger icon is clicked
        $("#table-of-contents-small-screens").toggleClass("is-hidden");

        // Modify the tooltip to Expand contents or Collapse contents
        // depending on if the contents is hidden or visible
        if ($("#table-of-contents-small-screens").is(":hidden") === true) {
            $("#toc-small-screens").attr("title", "Expand contents")
        } else if ($("#table-of-contents-small-screens").is(":visible") === true) {
            $("#toc-small-screens").attr("title", "Collapse contents")
        }
    });
});
