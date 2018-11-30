import java.util.Random;

//blue: #50c8ec
//red: #ed2024
//light blue: #45e5ff                    

int boxsize = 100;
int cols, rows;
color[][] colors;
int[][] id;
int saved_i = -1;
int saved_j = -1;
PFont font;
color bgColor;
//boolean mouseDownFlag;
//State state;
 
void setup() {
  size(701, 800);
  cols = 700/boxsize;
  rows = 700/boxsize;
  colors = new color[cols][rows];
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      colors[i][j] = color(0);
    }
  }
  //font = createFont("Fipps-Regular.otf", 48);
  
}
 
void draw() {
  background(0);
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      fill(colors[i][j]);
      rect(i*boxsize, j*boxsize, boxsize, boxsize);
      stroke(#50c8ec);
    }
  }
}
 
void mousePressed() {
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      int x = i*boxsize;
      int y = j*boxsize;
      if (mouseX > x && mouseX < (x + boxsize) && mouseY > y && mouseY < (y + boxsize)) {
        if ( saved_i == -1 || saved_i == i || saved_j == j ) {
          colors[i][j] = color(#45e5ff);
          saved_i = i;
          saved_j = j;
        }
      }
    }
  }
}
