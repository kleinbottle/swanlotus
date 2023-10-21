// Requires jQuery
$(document).ready(function () {
    $("#toc-small-screens").click(function () {
        // Show or hide the table of contents on mobile devices when
        // burger icon is clicked
        $("#table-of-contents-small-screens").toggleClass("is-hidden");

        // Modify the tooltip to Expand contents or Collapse contents
        // depending on if the contents is hidden or visible
        if ($("#table-of-contents-small-screens").is(":hidden") === true) {
            $("#toc-small-screens").attr("title", "Expand table of contents")
        } else if ($("#table-of-contents-small-screens").is(":visible") === true) {
            $("#toc-small-screens").attr("title", "Collapse table of contents")
        }
    })
});
