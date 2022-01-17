(function () {
  document.addEventListener("DOMContentLoaded", function () {
    var input = document.querySelector(".govspeak-preview-input form"),
      output = document.querySelector(".govspeak-preview-output");

    if (!input || !output) return;
    if (output.dataset.ouptputIsNil === "true") return;

    input.scrollIntoView({
      behavior: setTransitionAnimation(),
    });
  });

  function setTransitionAnimation() {
    return window.matchMedia("(prefers-reduced-motion: reduce)").matches
      ? "auto"
      : "smooth";
  }
})();
