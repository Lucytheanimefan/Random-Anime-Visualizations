PImage otaku;
PFont font1;
color black=#000000;
color white=#ffffff;

void setup(){
  size(500,500);
  background(black);
  otaku=loadImage("Otaku.jpg");
  font1=loadFont("ACaslonPro-BoldItalic-48.vlw");
}

void draw(){
  background(black);
  textFont(font1,32);
  text("The Tragedy of the Otaku's Love Life", 10,30);
  fill(white);
  stroke(40);
  for (int i=0; i<10; i++){
    int x1=(int)random(20,50);
    int y1=(int)random(20,450);
    int x2=200;
    int y2=(int)random(200,320);
    line(x2,y2,x1,y1);
  }
  image(otaku, 200, 200, 120, 120);
}