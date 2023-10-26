// Requires jQuery
// Copied from https://codepen.io/sinisag/pen/vPEajE
// Modal Setup
$(document).ready(function () {
    var modal = document.getElementById('modal');

    var modalClose = document.getElementById('modal-close');
    modalClose.addEventListener('click', function () {
        modal.style.display = "none";
    });

    // Global handler using standard JavaScript
    document.addEventListener('click', function (e) {
        if (e.target.className.indexOf('modal-target') !== -1) {
            var img = e.target;
            var modalImg = document.getElementById("modal-content");
            var captionText = document.getElementById("modal-caption");
            modal.style.display = "block";
            modalImg.src = img.src;

            // Caption retrieved from the figcaption element
            // which is a sibling of the img element
            captionText.innerHTML = img.nextElementSibling.innerHTML;
        }
    });
});
