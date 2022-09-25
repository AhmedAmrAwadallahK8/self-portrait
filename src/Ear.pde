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
  
  Ear(Face f, String side){
    this.side = side;
    
    rightEarX = f.headX+f.headRadius*0.92;
    leftEarX = f.headX-f.headRadius*0.92;
    earY = f.headY+f.headRadius*.55;
    //lobeY = f.headY+f.headRadius*0.9;
    upperEarRadius = f.headRadius*0.15;
    //leftLobeX = int(f.headX - f.headRadius + 0.08*f.headSize);
    //rightLobeX = int(f.headX + f.headRadius - 0.08*f.headSize);
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
  
  void drawUpperEar(){
    fill(191,153,114);
    if(side == "left"){
      ellipse(leftEarX, earY, 2*upperEarRadius, 3*upperEarRadius);
      
    }
    else if(side == "right"){
      ellipse(rightEarX, earY, 2*upperEarRadius, 3*upperEarRadius);
    }
    fill(255);
  }
  
  void drawLobe(){
    fill(171,120,78);
    if(side == "left"){
      ellipse(leftLobeX, lobeY, lobeWidth, lobeHeight);

    }
    else if(side == "right"){
      ellipse(rightLobeX, lobeY, lobeWidth, lobeHeight);
    }
    fill(255);
    
    /*
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
    }   */
  }
}
