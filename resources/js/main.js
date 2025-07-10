// resources/js/main.js

document.addEventListener('DOMContentLoaded', () => {
    // Select elements by their IDs.
    // getElementById is used here because we are targeting specific, known IDs.
    // If you had many elements with the same class, querySelectorAll would be better.
    const versionDisplays = [
        document.getElementById('version-display'),
        document.getElementById('version-displayw')
    ].filter(Boolean); // Filter out any null elements if an ID isn't found

    let environmentSuffixPart;
    let privatePrefixPart = '';

    // Determine environment and private prefix based on hostname and port
    const isLocalDev = (
        window.location.hostname === 'localhost' ||
        window.location.hostname === '127.0.0.1'
    ) && window.location.port === '4000';

    if (isLocalDev) {
        environmentSuffixPart = 'main_dev(lex)';
        privatePrefixPart = '.';
    } else {
        environmentSuffixPart = 'main';
    }

    // Ensure GLOBAL_BUILD_MAJOR, GLOBAL_BUILD_MINOR, GLOBAL_BUILD_PATCH, GLOBAL_BUILD_TIMESTAMP
    // are correctly defined in _layouts/default.html as global variables (e.g., in <script> tags)
    const extBuildNumber = `${GLOBAL_BUILD_MAJOR}.${GLOBAL_BUILD_MINOR}.${GLOBAL_BUILD_PATCH}${privatePrefixPart}${environmentSuffixPart}.${GLOBAL_BUILD_TIMESTAMP}`;

    // Update text content for all found display elements
    if (versionDisplays.length > 0) {
        versionDisplays.forEach(element => {
            element.textContent = extBuildNumber;
            console.log(`Extended Build Number: ${extBuildNumber}`);
        });
    } else {
        // Fallback to console log if no display elements are found
        console.log(`Extended Build Number: ${extBuildNumber}`);
    }
});