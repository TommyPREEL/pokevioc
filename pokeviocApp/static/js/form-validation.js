document
  .getElementById("contact-form")
  .addEventListener("submit", (element) => {
    console.log(element);
    element.preventDefault();

    const audioDuration = 4e3; // 4 seconds
    const audioVariable = document.getElementById("audio-pokemon");

    audioVariable.play();

    setTimeout(() => {
      element.target.submit();
    }, audioDuration);
  });
