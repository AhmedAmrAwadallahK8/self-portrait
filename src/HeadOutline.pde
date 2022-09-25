class HeadOutline implements FaceComponent{
  
  void drawComponent(Face f){
    //f.headX = getCircleCenteredX() + f.xOffsetCenter;
    //f.headY = getCircleCenteredY() + f.yOffsetCenter;
    fill(196, 164, 132);
    ellipse(f.headX,f.headY,f.headSize,f.headSize);
    fill(255);
  }
  
}
