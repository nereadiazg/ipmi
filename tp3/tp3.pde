//https://www.youtube.com/watch?v=5sehsV88BG0//
PImage Imagen1;
int cantX, cantY,x,y;
color negro, blanco,violeta;
boolean esPar;
void setup() {
size(800,400);
 Imagen1= loadImage("Imagen1.png");
 Imagen1.resize(400,400);
 strokeWeight(21);
 negro= color(0);
 blanco=color(255);
 violeta= color(171,14,203);
 cantX=10;
 cantY=10;
 x=0;
 y=0;
  }
  void draw() {
  background(blanco);
  println(mouseX, mouseY);
  image(Imagen1,0,0);

  fill(negro);
  for (int y = 0; y <= 200; y += 45) {
    for (int x = 402; x < 590; x += 20) {
      line(x, y, x +20, y);
    }
  }
  for (int x=600; x<800; x+=45) {
    for (int y=0; y<200; y+=20) {
      line(x, y, x, y+20);
    }
  }
  for (int y = 200; y < 400; y += 45) {
    for (int x = 580; x < 790; x += 20) {
      line(x, y, x +20, y);
    }
  }
  for (int x=400; x<600; x+=45) {
    for (int y=190; y<400; y+=20) {
      line(x, y, x, y+20);
    }
 stroke(0);
    fill(blanco);
    ellipseMode(CENTER);
    for (int r = 15; r <= 100; r += 30) {
      ellipse(600, 200, r * 3, r * 3);
    }
  }
  push();
  fill(blanco);
  stroke(0);
  ellipse(600, 200, 130, 130);
  pop();
  push();
  fill(blanco);
  stroke(0);
  ellipse(600, 200, 50, 50);

  pop();
  }

 

  void mousePressed() {
  blanco = violeta;
  
  if (mouseX>600&& mouseY>0){
fill(blanco);
  }
}
