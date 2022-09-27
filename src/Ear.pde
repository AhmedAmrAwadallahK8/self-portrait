class Ear implements FaceComponent{
  float rightEarX;
  float leftEarX;
  float rightLobeX;
  float leftLobeX;
  float earY;
  float lobeY;
  float upperEarRadius;
  String side;
  float lobeWidth;
  float lobeHeight;
  
  Ear(Face f){    
    rightEarX = f.headX+f.headRadius*0.92;
    leftEarX = f.headX-f.headRadius*0.92;
    earY = f.headY+f.headRadius*.55;
    upperEarRadius = f.headRadius*0.15;
    lobeY = earY+f.headSize*0.095;
    leftLobeX = leftEarX + f.headSize*0.015;
    rightLobeX = rightEarX - f.headSize*0.015;
    lobeWidth =  f.headSize*.095;
    lobeHeight =  f.headSize*.11;
    
  }
  
  void drawComponent(Face f){
    drawLobe();
    drawUpperEar();
  }
  
  void drawLeftUpperEar(){
    ellipse(leftEarX, earY, 2*upperEarRadius, 3*upperEarRadius);
  }
  
  void drawRightUpperEar(){
    ellipse(rightEarX, earY, 2*upperEarRadius, 3*upperEarRadius);
  }
  
  void drawUpperEar(){
    fillFallow();
    drawLeftUpperEar();
    drawRightUpperEar();
    fillWhite();
  }
  
  void drawRightLobe(){
    ellipse(rightLobeX, lobeY, lobeWidth, lobeHeight);
  }
  
  void drawLeftLobe(){
    ellipse(leftLobeX, lobeY, lobeWidth, lobeHeight);
  }
  
  void drawLobe(){
    fillAlmond();
    drawLeftLobe();
    drawRightLobe();
    fillWhite();
  }
}
