function toggleTable(id) {
    let x = document.getElementById(id);
    if (x.style.display === "none") {
      x.style.display = "inline-block";
    } else {
      x.style.display = "none";
    }
}
  
  
window.addEventListener("load", () => {
    const links = document.querySelectorAll(
        "button[data-id]"
    );
    links.forEach((element) => {
        element.addEventListener("click", (event) => {
        event.preventDefault();
        console.log("beep")
        const {id} = element.dataset;
        toggleTable(id)
        });
    });
});