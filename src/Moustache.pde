class Moustache extends Hair{
   Moustache(Face f){
    super(f);
    
    guideAdjustment = f.headRadius*0.15;
    hairRadius = f.headRadius*.03;
    hairSizeLowerBound= 0.5;
    hairSizeUpperBound= 3.0;
    hairPosLowerBound = 0.99;
    hairPosUpperBound = 1.01;
    
    anchorLeftX = f.headX - f.headRadius + 0.08*f.headSize;
    anchorLeftY = f.headY + f.headRadius;
    anchorRightX = f.headX + f.headRadius - 0.08*f.headSize;
    anchorRightY = f.headY + f.headRadius;
    
    guideLeftX = anchorLeftX;
    guideLeftY = anchorLeftY-guideAdjustment;
    guideRightX = anchorRightX;
    guideRightY = anchorRightY-guideAdjustment;
    
    hairFollicles = 1000;
  }
  
  void drawComponent(Face f){
    drawHairGuide();
    drawHair();
  }
}
