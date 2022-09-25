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
    fill(193,75,75);
    ellipse(mouthX, mouthY, mouthWidth, mouthHeight);
    fill(255);
  }
  
  void drawMouthSeperator(){
    line(mouthX-mouthWidth/2, mouthY, mouthX+mouthWidth/2, mouthY);
  }
}
