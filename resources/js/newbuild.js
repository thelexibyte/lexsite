// resources/js/main.js
// Access the global variables defined in _layouts/default.html

document.addEventListener('DOMContentLoaded', () => {
    const versionDisplay = document.getElementById('version-display');

    let environmentSuffixPart; // This will hold 'main' or 'dev(lex)'

    // Determine the environment part
    if (
        (window.location.hostname === 'localhost' || window.location.hostname === '127.0.0.1') &&
        window.location.port === '4000'
    ) {
        environmentSuffixPart = 'dev(lex)'; // For localhost:4000 or 127.0.0.1:4000
    } else {
        environmentSuffixPart = 'main'; // For other environments
    }

    // Construct the full extbuildnumber string
    // Format: 0.0.<INCREMENTAL_PATCH>..private/<environment_suffix_part>.<YYmmDD-HHMM>
    // GLOBAL_BUILD_PATCH now holds the incrementing number
    const extBuildNumber = `${GLOBAL_BUILD_MAJOR}.${GLOBAL_BUILD_MINOR}.${GLOBAL_BUILD_PATCH}.${environmentSuffixPart}.${GLOBAL_BUILD_TIMESTAMP}`;

    if (versionDisplay) {
        versionDisplay.textContent = `${extBuildNumber}`;
    } else {
        console.log(`Extended Build Number: ${extBuildNumber}`);
    }
});