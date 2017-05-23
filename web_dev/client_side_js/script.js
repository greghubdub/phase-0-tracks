/*
console.log("Script loaded");
var h1s = document.getElementsByTagName("h1");
for (var i = 0; i < h1s.length; i++)
{
  var h1 = h1s[i];
  h1.style.fontStyle = "italic";
}
*/

function toggleItalics(event)
{
  if (event.target.parentElement != null && event.target.parentElement.id == "foot" ||
      event.target.id == "foot")
    return;
  if (event.target.style.fontStyle == "italic")
    event.target.style.fontStyle = "normal";
  else
    event.target.style.fontStyle = "italic";
}

function addElements(event)
{
  var newEl = document.createElement("p");
  newEl.textContent = "Don't judge us!";
  var footer;
  if (event.target.id == "foot")
    footer = event.target;
  else
    footer = event.target.parentElement;
  footer.appendChild(newEl);
}

document.addEventListener("click",toggleItalics);

var footer = document.getElementById("foot");

footer.addEventListener("click",addElements);