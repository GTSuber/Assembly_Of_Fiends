int boxsize = 100;
int cols, rows;
color[][] colors;
int saved_i = -1;
int saved_j = -1;

int lives = 3; //3 attempts 
int attempt = 0; //set the first attempt at 0
 
void setup() {
  size(1300, 600);
  cols = width/boxsize;
  rows = height/boxsize;
  colors = new color[cols][rows];
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      colors[i][j] = color(255);
    }
  }
}
 
void draw() {
  background(255);
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      fill(colors[i][j]);
      rect(i*boxsize, j*boxsize, boxsize, boxsize);
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
          colors[i][j] = color(0);
          //if (j>0) colors[i][j-1]=color(255, 255, 0);
          //if (j<rows-1) colors[i][j+1]=color(255, 255, 0);
          //if (i>0) colors[i-1][j]=color(255, 255, 0);
          //if (i<cols-1) colors[i+1][j]=color(255, 255, 0);
          saved_i = i;
          saved_j = j;
        }
      }
    }
  }
}

//if lose, show game over display
void gameOver() {
  if (attempt == lives) {
    fill(255);
    text("Game over", width/2, height/2);
  }
}
