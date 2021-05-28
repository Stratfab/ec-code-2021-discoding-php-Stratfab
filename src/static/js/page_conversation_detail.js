const contentInput = document.getElementById("content");

contentInput.addEventListener("keyup", function (event) {
  if (event.code === 13) {
    event.preventDefault();
    document.getElementById("sendMessage").click();
  }
});

// jQuery script for refresh the div for the conversationView

$(document).ready(function () {
  setInterval(function () {
    $("#reload").load(window.location.href + " #reload");
  }, 5000); //refresh every 5 seconds
});
