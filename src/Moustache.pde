class Moustache extends Hair{
   Moustache(Face f){
    super(f);
    
    guideAdjustment = f.headRadius*0.15;
    hairRadius = f.headRadius*.03;
    hairSizeLowerBound= f.headSize*0.0015;
    hairSizeUpperBound= f.headSize*0.009;
    hairPosLowerBound = .99;
    hairPosUpperBound = 1.01;
    
    anchorLeftX = f.headX - f.headRadius + 0.08*f.headSize;
    anchorLeftY = f.headY + f.headRadius;
    anchorRightX = f.headX + f.headRadius - 0.08*f.headSize;
    anchorRightY = f.headY + f.headRadius;
    
    guideLeftX = anchorLeftX;
    guideLeftY = anchorLeftY-guideAdjustment;
    guideRightX = anchorRightX;
    guideRightY = anchorRightY-guideAdjustment;
    
    hairFollicles = 333333/f.headSize;
  }
  
  void drawComponent(Face f){
    drawHairGuide();
    drawHair();
  }
}
