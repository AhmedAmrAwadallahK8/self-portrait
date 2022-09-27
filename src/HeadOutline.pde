class HeadOutline implements FaceComponent{
  
  void drawComponent(Face f){
    fillLightBrown();
    ellipse(f.headX,f.headY,f.headSize,f.headSize);
    fillWhite();;
  }
  
}
