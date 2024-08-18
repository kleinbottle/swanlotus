// MathJax configuration options
window.MathJax = {
    chtml: {
        scale: 0.91 // Hand-tweaked for Noto Serif and STIX2
        // matchFontHeight: true // A smidgen too large?
    },
    tex: {
        macros: {
            sech: '\\DeclareMathOperator{\\sech}{sech}\\sech',
            csch: '\\DeclareMathOperator{\csch}{csch}\\csch',
            arcsec: '\\DeclareMathOperator{\\arcsec}{arcsec}\\arcsec',
            arccot: '\\DeclareMathOperator{\\arccot}{arccot}\\arccot',
            arccsc: '\\DeclareMathOperator{\\arccsc}{arccsc}\\arccsc',
            arccosh: '\\DeclareMathOperator{\\arccosh}{arccosh}\\arccosh',
            arcsinh: '\\DeclareMathOperator{\\arcsinh}{arcsinh}\\arcsinh',
            arctanh: '\\DeclareMathOperator{\\arctanh}{arctanh}\\arctanh',
            arcsech: '\\DeclareMathOperator{\\arcsech}{arcsech}\\arcsech',
            arccsch: '\\DeclareMathOperator{\\arccsch}{arccsch}\\arccosh',
            arccoth: '\\DeclareMathOperator{\\arccoth}{arccoth}\\arccoth' 
        }
    },
    output: {
        font: "mathjax-stix2" // Needs MathJax 4.0.0 or higher
    }
};

// Loading MathJax with configuration options
(
    function () {
        var script = document.createElement("script");

        // Using Beta version of MathJax 4.0.0 until stable version is available
        script.src = "https://cdn.jsdelivr.net/npm/mathjax@4.0.0-beta.7/tex-mml-chtml.min.js";
        script.async = true;
        document.head.appendChild(script);
    }
)();

