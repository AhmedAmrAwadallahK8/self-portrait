class Beard extends Hair{
  
  Beard(Face f){
    super(f);
    
    guideAdjustment = f.headRadius*0.6;
    hairRadius = f.headRadius*.05;
    hairSizeLowerBound= 0.5;
    hairSizeUpperBound= 3.0;
    hairPosLowerBound = 0.9;
    hairPosUpperBound = 1.05;
    
    anchorLeftX = f.headX - f.headRadius + 0.08*f.headSize;
    anchorLeftY = f.headY + f.headRadius;
    anchorRightX = f.headX + f.headRadius - 0.08*f.headSize;
    anchorRightY = f.headY + f.headRadius;
    
    guideLeftX = anchorLeftX;
    guideLeftY = anchorLeftY+guideAdjustment;
    guideRightX = anchorRightX;
    guideRightY = anchorRightY+guideAdjustment;
    
    hairFollicles = 1000;
  }
  
  void drawComponent(Face f){
    drawHairGuide();
    drawHair();
  }
  
}
