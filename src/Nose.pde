class Nose implements FaceComponent{
  float noseX;
  float noseY;
  Nose(Face f){
  }
  
  void drawComponent(Face f){
    noseX = f.headX;
    noseY = f.headY+f.headRadius*0.8;
    ellipse(noseX, noseY, 30, 30); // BASIC NOSE CHANGE LATER
  }
}
