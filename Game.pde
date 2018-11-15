int radius = 30;
int horiz = 20;
int vert = 20;
float xp = 0;
float yp = 0;

float xs = 0;
float ys = 0;

float r = 0;
float gravity = 0.4;
void setup() {
  size(720, 720);
  xp = width * 0.2;
  yp = height - radius;
  rectMode(CENTER);
  noStroke();
}

void keyReleased() {
  
  final int k = keyCode;
  if (xp != 720 && yp !=720) {
  if(keyCode == RIGHT) {
    xp += horiz;
  }
  if(keyCode == LEFT) {
    xp -= vert;
  }
  if(keyCode == DOWN) {
    yp += vert;
  }
  if(keyCode == UP) {
    yp -= vert;
  }
  }
}
  

void draw() {
  background(27);
  //move();
  display();
  //contain();
}
/*
void contain() {
  if (xp >= 720) {
    xp = 720;
  }
  if (xp > 0) {
    xp = 0;
  }
  if (yp >= 720) {
    yp = 720;
  }
  if (yp >= 0) {
    yp = 0;
  }
}*/
/*
void move() {
  if (keyCode == RIGHT) {
  xp+=xs;
  yp+=ys;
  
  //ys+= gravity;
  xs = r;
  }
}*/


void display() {
  fill(255);
  rect(xp,yp,radius*2,radius*2);
}
