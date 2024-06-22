// video https://youtu.be/-9jI9GJQpao//
PImage Imagen1;



void setup() {
size(800,400);
 Imagen1= loadImage("Imagen1.png");
 Imagen1.resize(400,400);
 strokeWeight(15);
 
  

}
void draw(){
  background(255);
   println(mouseX, mouseY);

  
image(Imagen1,0,0);
  for (int l=8; l<200; l+=40){
    line(408,l, 600, l);
    for(int li=608; li<800;li+=40){
      line(li,0,li,200);
     for(int lu=408; lu<650;lu+=50){
      line(lu,201,lu,400);
       for (int d=208; d<400; d+=40){
    line(612,d, 800, d);
   for(int c=200; c>0; c-= 80){
     ellipse (600,200, c,c);
   }
  }
  }
 }
}
}
void mousePressed(){
  if (mouseX > 400 && mouseY > 0) {
    fill(0, 255, 0); 
  } else {
    fill(255,0,255);  
  }
  if (mouseX<400 && mouseY>200){
    fill(255);
  }
}
void mouseMoved(){
  if (mouseX>400 && mouseY>0) {
    fill(random(100,150));
  }
  
}

    
    
