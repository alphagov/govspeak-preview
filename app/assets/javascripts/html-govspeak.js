(function () {
  var pasteGovspeakElement = document.getElementById("govspeak_input");
  if (!pasteGovspeakElement) return;

  pasteGovspeakElement.addEventListener(
    "paste",
    window.pasteHtmlToGovspeak.pasteListener
  );
})();
