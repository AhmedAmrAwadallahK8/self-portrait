class MouthGuideLine implements FaceComponent{
  void drawComponent(Face f){
    line(f.headX-f.headRadius/2, f.headY+f.headRadius, f.headX+f.headRadius/2, f.headY+f.headRadius);
  }
}
