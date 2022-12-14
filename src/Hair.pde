class Hair implements FaceComponent{
  
  float anchorLeftX;
  float anchorLeftY;
  float anchorRightX;
  float anchorRightY;
  float guideLeftX;
  float guideLeftY;
  float guideRightX;
  float guideRightY;
  float guideAdjustment;
  float hairRadius;
  float hairSizeLowerBound;
  float hairSizeUpperBound;
  float hairPosLowerBound;
  float hairPosUpperBound;
  float hairFollicles;
  
  Hair(Face f){
    guideAdjustment = f.headRadius;
    hairRadius = f.headRadius*.1;
    hairSizeLowerBound= f.headSize*0.0015; 
    hairSizeUpperBound= f.headSize*0.009; 
    hairPosLowerBound = 0.8; 
    hairPosUpperBound = 1.2; 
    
    anchorLeftX = f.headX - f.headRadius;
    anchorLeftY = f.headY;
    anchorRightX = f.headX + f.headRadius;
    anchorRightY = f.headY;
    
    guideLeftX = f.headX - f.headRadius;
    guideLeftY = f.headY-guideAdjustment;
    guideRightX = f.headX + f.headRadius;
    guideRightY = f.headY-guideAdjustment;
    
    hairFollicles = 333333/f.headSize;
    
    
  }
  
  void drawComponent(Face f){
    drawHairGuide();
    drawHair();
  }
  
  void drawHairGuide(){
    noFill();
    bezier(anchorLeftX, anchorLeftY, guideLeftX, guideLeftY, guideRightX, guideRightY, anchorRightX, anchorRightY);
    fillWhite();
  }
  
  void drawHair(){
    fillBlack();
    for(int i = 0; i<hairFollicles; i++){
      float randHairRadius = hairRadius*random(hairSizeLowerBound, hairSizeUpperBound);
      float locationAlongGuide = i/hairFollicles;
      float x = bezierPoint(anchorLeftX, guideLeftX, guideRightX, anchorRightX, locationAlongGuide);
      float y = bezierPoint(anchorLeftY, guideLeftY, guideRightY, anchorRightY, locationAlongGuide)*random(hairPosLowerBound, hairPosUpperBound);
      ellipse(x, y, randHairRadius, randHairRadius);
    }
    fillWhite();
  }
}
