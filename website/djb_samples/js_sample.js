window.addEventListener('DOMContentLoaded', init, false);
function init() {
    var triggers = document.querySelectorAll('section.conversation > h2');
    for (var i = 0, len = triggers.length; i < len; i++) {
        triggers[i].addEventListener('click', toggle, false);
    }
}
function toggle() {
    if (this.nextElementSibling.style.display == 'none') {
        this.nextElementSibling.style.display = 'block';
    } else {
        this.nextElementSibling.style.display = 'none';
    }
}