Face face;
PImage img;

void setup(){
  background(255);
  size(1000,800);
  randomSeed(10);
  Face face = new Face();
  backgroundImage();
  face.drawFace();
}

void backgroundImage(){
  img = loadImage("blackhole.png");
  if(width>500 && height >500){
    image(img, -width/13.333, 0);
  }
  
}
