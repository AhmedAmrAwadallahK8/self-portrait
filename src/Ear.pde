class Ear implements FaceComponent{
  float rightEarX;
  float leftEarX;
  float rightLobeX;
  float leftLobeX;
  float earY;
  float lobeY;
  float upperEarRadius;
  String side;
  
  Ear(Face f, String side){
    this.side = side;
    
    rightEarX = f.headX+f.headRadius;
    leftEarX = f.headX-f.headRadius;
    earY = f.headY+f.headRadius/3;
    lobeY = f.headY+f.headRadius*0.9;
    upperEarRadius = f.headRadius*0.15;
    leftLobeX = int(f.headX - f.headRadius + 0.08*f.headSize);
    rightLobeX = int(f.headX + f.headRadius - 0.08*f.headSize);
  }
  
  void drawComponent(Face f){
    drawUpperEar();
    drawLobe();
  }
  
  void drawUpperEar(){
    if(side == "left"){
      ellipse(rightEarX, earY, 2*upperEarRadius, 2*upperEarRadius);
    }
    else if(side == "right"){
      ellipse(leftEarX, earY, 2*upperEarRadius, 2*upperEarRadius);
    }     
  }
  
  void drawLobe(){
    if(side == "left"){
      beginShape();
      
      vertex(leftEarX-upperEarRadius, earY);
      vertex(leftLobeX, lobeY);
      
      endShape();
    }
    else if(side == "right"){
      beginShape();
      
      vertex(rightEarX+upperEarRadius, earY);
      vertex(rightLobeX, lobeY);
      
      endShape();
    }   
  }
}
