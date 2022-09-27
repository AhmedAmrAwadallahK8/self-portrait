//drawingCenter 
//int yOffsetCenter; //-125
//int headSize; //300

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
  image(img, -75, 0);
}
