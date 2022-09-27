class Mouth implements FaceComponent{
  float mouthX;
  float mouthY;
  float mouthWidth;
  float mouthHeight;
  
  Mouth(Face f){
    mouthX = f.headX;
    mouthY = f.headY+f.headRadius;
    mouthWidth = f.headRadius*0.7;
    mouthHeight = f.headRadius*0.1;
  }
  
  void drawComponent(Face f){
    drawMouth();
    drawMouthSeperator();
    
    
  }
  
  void drawMouth(){
    fillLipsTone();
    ellipse(mouthX, mouthY, mouthWidth, mouthHeight);
    fillWhite();
  }
  
  void drawMouthSeperator(){
    line(mouthX-mouthWidth/2, mouthY, mouthX+mouthWidth/2, mouthY);
  }
}
