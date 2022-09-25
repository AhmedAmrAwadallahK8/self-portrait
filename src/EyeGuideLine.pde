class EyeGuideLine implements FaceComponent{
  void drawComponent(Face f){
    line(f.headX-f.headRadius/2, f.headY+f.headRadius/3, f.headX+f.headRadius/2, f.headY+f.headRadius/3);
  }
}
