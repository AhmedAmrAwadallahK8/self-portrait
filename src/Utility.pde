public class Utility{
  public int getCircleCenteredX(){
    return width/2;
  }
  
  public int getCircleCenteredY(){
    return height/2;
  }
  
  public int getSquareCenteredX(int size){
    return width/2 - size/2;
  }
  
  public int getSquareCenteredY(int size){
    return height/2 - size/2;
  }
  
  void drawPolygon(int size, int sides){
    beginShape();
    translate(getCircleCenteredX(), getCircleCenteredY());
    float angle = 0;
    float angleInc = TWO_PI/sides;
    for(int i = 0; i < sides; i++){
      float x = size*cos(angle);
      float y = size*sin(angle);
      vertex(x, y);
      angle+=angleInc;
    }
    endShape(CLOSE);
  }
}
