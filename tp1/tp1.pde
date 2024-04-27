//Nerea Diaz Gomez- Legajo 78144/8- Comision 3
PImage photo;
void setup() {
  size(800 , 400);
  photo=loadImage ("photo.jpg");
  photo.resize(400, 400);
 }
 
void draw() {
  
 background(#FFD9BC);
 image(photo,0,0);
 println(mouseX, mouseY);
 fill(#F7F74B);
 triangle(526,400,596,236,658,400);
 fill(#7C4706);
 ellipse(603,150,155,250);
fill(#F7CEA2);
ellipse(673,220,15,35);
ellipse(527,229,15,35);
ellipse(600,201,146,266);
point(563,170);
point(626,171);
fill(255);
strokeWeight(1);
ellipse(563,170,48,86);
ellipse(626,171,48,88);
fill(0);
ellipse(561,170,6,6);
ellipse(624,170,6,6);
line(556,379,556,400);
line(625,379,625,400);
beginShape();
curveVertex(577,278);
curveVertex(622,250);
curve(572,259,577,278,622,278,627,276);
curveTightness(0);
endShape();
noFill();
bezier(592,212,569,226,581,261,600,228);



 }
  
