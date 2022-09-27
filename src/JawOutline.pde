class JawOutline implements FaceComponent{
  
  void drawComponent(Face f){
    beginShape();
    int headRadius = f.headSize/2;
    
    int leftFaceX = f.headX - headRadius;
    int leftFaceY = f.headY;
    vertex(leftFaceX, leftFaceY);
    
    int leftJawX = int(f.headX - headRadius + 0.08*f.headSize);
    int leftJawY = f.headY + headRadius;
    vertex(leftJawX, leftJawY);
    
    int chinX = f.headX;
    int chinY = f.headY + headRadius + headRadius/2;
    vertex(chinX, chinY);
    
    int rightJawX = int(f.headX + headRadius - 0.08*f.headSize);
    int rightJawY = f.headY + headRadius;
    vertex(rightJawX, rightJawY);
    
    int rightFaceX = f.headX + headRadius;
    int rightFaceY = f.headY;
    vertex(rightFaceX, rightFaceY);
    fillLightBrown();
    endShape();
    fillWhite();
  }
  
}
