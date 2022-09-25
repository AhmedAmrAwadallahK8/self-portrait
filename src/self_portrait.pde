//drawingCenter 
//int yOffsetCenter; //-125
//int headSize; //300

Face face;
PImage img;

void setup(){
  background(255);
  size(1000,800);
  randomSeed(10);
  //img = loadImage("S3= -0.0058 S10= -0.01852 S16= 0.0799 S14= 0.0785 S22= 0.08139 C= 60000.0.png");
  //image(img, 0, 0);
  //size(700,500);
  
  Face face = new Face();
  face.drawFace();
}
