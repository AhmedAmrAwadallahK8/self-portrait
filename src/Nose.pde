class Nose implements FaceComponent{
  float noseX;
  float noseY;
  float nostrilOffset;
  float nostrilWidth;
  float nostrilHeight;
  float noseOffsetX;
  float noseOffsetY;
  
  float noseBottomX;
  float noseBottomY;
  float noseTipX;
  float noseTipY;
  float noseTopX;
  float noseTopY;
  Nose(Face f){
    noseX = f.headX;
    noseY = f.headY+f.headRadius*0.8;
    nostrilOffset = f.headRadius*.04;
    nostrilWidth = f.headRadius*.05;
    nostrilHeight = f.headRadius*.01;
    noseOffsetX = f.headRadius*.01;
    
    noseBottomX = noseX - f.headRadius*.01;
    noseBottomY = noseY;
    noseTipX = noseX - f.headRadius*.061;
    noseTipY = noseY - f.headRadius*0.09;
    noseTopX = noseX - f.headRadius*.01;
    noseTopY = noseY - f.headRadius*0.18;
  }
  
  void drawComponent(Face f){
    drawNoseBody();
    drawNostril();
    
    
  }
  
  void drawNoseBody(){
    fillDarkBrown();
    beginShape();
    
    vertex(noseBottomX, noseBottomY);
    
    vertex(noseTipX, noseTipY);
    
    vertex(noseTopX, noseTopY);
    
    endShape();
    fillWhite();
  }
  
  void drawNostril(){
    fillDarkBrown();
    drawRightNostril();
    fillWhite();
  }
  
  void drawLeftNostril(){
    ellipse(noseX-nostrilOffset, noseY, nostrilWidth, nostrilHeight);
  }
  
  void drawRightNostril(){
    ellipse(noseX+nostrilOffset, noseY, nostrilWidth, nostrilHeight);
  }
  
}
