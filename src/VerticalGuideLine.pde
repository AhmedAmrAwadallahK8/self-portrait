class VerticalGuideLine implements FaceComponent{
  void drawComponent(Face f){
    line(f.headX, f.headY-f.headRadius, f.headX, f.headY+f.headRadius+f.headRadius/2);
  }
}
