//= require govspeak-visual-editor/dist/govspeak-visual-editor.js

(function () {
  var content = document.querySelector(".js-visual-editor__content"),
    container = document.querySelector(".js-visual-editor__container"),
    textarea = document.querySelector(".js-visual-editor__textarea"),
    markdownButton = document.querySelector(
      ".js-visual-editor__markdown_button",
    ),
    markdownSection = document.querySelector(
      ".js-visual-editor__markdown_section",
    ),
    copyButton = document.querySelector(".js-visual-editor__copy_button");

  if (
    !content ||
    !container ||
    !textarea ||
    !markdownButton ||
    !markdownSection ||
    !copyButton
  )
    return;

  new window.GovspeakVisualEditor(content, container, textarea, { images: [] });

  markdownButton.addEventListener("click", () => {
    event.preventDefault();
    markdownSection.removeAttribute("hidden");
    markdownSection.scrollIntoView({ behavior: "smooth" });
  });

  copyButton.addEventListener("click", () => {
    event.preventDefault();
    textarea.select();
    document.execCommand("copy");
  });
})();
