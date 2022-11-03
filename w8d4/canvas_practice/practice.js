document.addEventListener("DOMContentLoaded", function () {
    const canvas = document.getElementById("mycanvas");
    canvas.height = 500;
    canvas.width = 500;

    let ctx = canvas.getContext("2d");
    ctx.fillStyle = rgb(255, 255, 255);
    ctx.fillRect(0, 0, 500, 500);
});
