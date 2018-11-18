function setup() {
  createCanvas(700, 700);
  for (var xpos = 0; xpos < 700; xpos += 100) {
    for(var ypos = 0; ypos < 700; ypos += 100) {
      button = createButton("");
      button.position(xpos,ypos);
      button.size(100,100);
      
    }
  }
  
  background(51);
}

function mousePressed() {
  var x = mouseX;
  var y = mouseY;
  if (x > 0 && x < 100 && y > 0 && y < 100) {
    button = createButton("");
    button.position(0,0);
    button.size(100,100);
    button.style("background-color", "blue");
  }
  
  if (x > 100 && x < 200 && y > 0 && y < 100) {
    button = createButton("");
    button.position(100,0);
    button.size(100,100);
    button.style("background-color", "blue");
  }
  
  if (x > 200 && x < 300 && y > 0 && y < 100) {
    button = createButton("");
    button.position(200,0);
    button.size(100,100);
    button.style("background-color", "blue");
  }
  
  if (x > 300 && x < 400 && y > 0 && y < 100) {
    button = createButton("");
    button.position(300,0);
    button.size(100,100);
    button.style("background-color", "blue");
  }
  
  if (x > 400 && x < 500 && y > 0 && y < 100) {
    button = createButton("");
    button.position(400,0);
    button.size(100,100);
    button.style("background-color", "blue");
  }
  
  if (x > 500 && x < 600 && y > 0 && y < 100) {
    button = createButton("");
    button.position(500,0);
    button.size(100,100);
    button.style("background-color", "blue");
  }
  
  if (x > 600 && x < 700 && y > 0 && y < 100) {
    button = createButton("");
    button.position(600,0);
    button.size(100,100);
    button.style("background-color", "blue");
  }
  
  
}
function draw() {
  
  /*for (var xpos = 0; xpos <= 700; xpos += 100) {
    for(var ypos = 0; ypos <= 700; ypos += 100) {
      stroke(0);
      rect(xpos, ypos, 100,100);
    }
  }*/
  
}

