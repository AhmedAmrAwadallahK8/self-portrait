class Nose implements FaceComponent{
  float noseX;
  float noseY;
  float nostrilOffset;
  float nostrilWidth;
  float nostrilHeight;
  float noseOffset;
  Nose(Face f){
    noseX = f.headX;
    noseY = f.headY+f.headRadius*0.8;
    nostrilOffset = f.headRadius*.04;
    nostrilWidth = f.headRadius*.05;
    nostrilHeight = f.headRadius*.01;
    noseOffset = f.headRadius*.01;
  }
  
  void drawComponent(Face f){
    drawNoseBody();
    drawNostril();
    
    
  }
  
  void drawNoseBody(){
    fill(78,53,36);
    beginShape();
    
    vertex(noseX-noseOffset, noseY);
    
    vertex(noseX-noseOffset-10, noseY-15);
    
    vertex(noseX-noseOffset, noseY-30);
    
    endShape();
    fill(255);
  }
  
  void drawNostril(){
    fill(78,53,36);
    //drawLeftNostril();
    drawRightNostril();
    fill(255);
  }
  
  void drawLeftNostril(){
    ellipse(noseX-nostrilOffset, noseY, nostrilWidth, nostrilHeight);
  }
  
  void drawRightNostril(){
    ellipse(noseX+nostrilOffset, noseY, nostrilWidth, nostrilHeight);
  }
  
}
