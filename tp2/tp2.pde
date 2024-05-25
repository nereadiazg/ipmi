int pantalla,segundos;
float x,y;
String texto1,texto2,texto3,texto4,texto5;
PImage imagen1,imagen2,imagen3,imagen4,imagen5;
PFont fuenteportada;
int alpha;
int tam;
color relleno;
float d;
void setup() {
  tam=12;
  relleno = color(255);
  pantalla=1;
  x= 0;
  y=600;
  d=0;
  alpha=255;
  size(640, 480); // tamaño de la ventana
  imagen1 = loadImage("imagen1.png");
  imagen2 = loadImage("imagen2.png");
  imagen3 = loadImage("imagen3.png");
  imagen4= loadImage("imagen4.png");
  imagen5= loadImage("imagen5.png");
  imagen1.resize(640,480);
  imagen2.resize(500, 300);
  imagen3.resize(338,480);
  imagen4.resize(640,480);
  fuenteportada= loadFont("ImprintMT-Shadow-40.vlw");
  texto1= "     'LA NOCHE ESTRELLADA' \n            por Vincent van Gogh";
  texto2= "   La obra suele recrear, no solo \n      la pintura icónica del pintor, \n      sino también otros aspectos\n              de su vida y obras.";
  texto3= "Esta exposicion combina proyecciones de \n alta definicion, musica y efectos de sonido\n para sumergir a los espectadores en el\n mundo del artista.";
texto4= "Surgio en el año 2018 y\n se presento en diversas\n ciudades del mundo.\n Desde entonces ha habido\n multiples adaptaciones \ny nuevas creaciones \n multimediales para recrear\n las obras de Van Gogh,\n siendo la mas conocida \n'la noche estrellada'.";
texto5= " Hacé click en 'la noche estrellada' para\n                   REINICIAR";
}


void draw() {
  if (pantalla==1){
    background(0);
  image (imagen4,0,0);
  fill(255);
  textSize(35);
  textFont(fuenteportada);
  text(texto1,0,y);
  y=y-1;
}

  
 if (pantalla==2){
  background(0); // Fondo negro
 image(imagen1,0,y);
 fill(255);
 textSize(45);
 text(texto2,0,d);
 y=y-0.5;
 d=d+0.5;
 }
else if (pantalla==3){
  background(0);
image(imagen2, 0,0);
fill (255);
textSize(28);
text(texto3, x,350);
if (segundos>12){
  text(texto3,x,350);
  x=x+1;
}
}
 else if (pantalla==4){
    background(0);
    image(imagen3,0,0);
    fill(250);
    textSize(28);
    text(texto4, 300,y);
    if(segundos>14&&segundos<18){
      text(texto4,300,y);
      y=y-0.2;
    }
    }
 else if(pantalla==5){
   background(255);
   image(imagen5, 320,240);
   fill(0);
   textSize(32);
   text(texto5,80,y);
y=y+0.2;
}
 if (segundos < 2){
    pantalla = 1;
  } else if (segundos > 5 && segundos < 8) {
    pantalla = 2;
  } else if (segundos > 10 && segundos <14){
    pantalla =3;
  }
  else if (segundos>14 && segundos<22){
    pantalla=4;
  }
  else if(segundos>22){
    pantalla=5;
  }

  if (frameCount%60 == 0) {
      segundos++;
    }
}
  void mousePressed(){
  if(pantalla>=5){
    pantalla=1;
  }
  if(segundos>=22){
    segundos=0;
    pantalla=1;
    y=600;
    x=0;
  }
  }
