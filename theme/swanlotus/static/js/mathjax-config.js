// MathJax configuration options
window.MathJax = {
    chtml: {
        scale: 0.91 // Hand-tweaked for Noto Serif and STIX2
        // matchFontHeight: true // A smidgen too large?
    },
    output: {
        font: "mathjax-stix2" // Needs MathJax 4.0.0 or higher
    },
    options: {
        menuOptions: {
            settings: {
                // Turn off assistive tools to avoid slow loading of MathJax
                // revisit when we have a 4.0.0 stable release
                enrich: false
            }
        }
    }
};

// Loading MathJax with configuration options
(
    function () {
        var script = document.createElement("script");

        // Using Beta version of MathJax 4.0.0 until stable version is available
        script.src = "https://cdn.jsdelivr.net/npm/mathjax@4.0.0-beta.6/tex-mml-chtml.min.js";
        script.async = true;
        document.head.appendChild(script);
    }
)();
