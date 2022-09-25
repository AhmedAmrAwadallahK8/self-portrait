class NoseGuideLine implements FaceComponent{
  void drawComponent(Face f){
    line(f.headX-f.headRadius/2, f.headY+f.headRadius*0.8, f.headX+f.headRadius/2, f.headY+f.headRadius*0.8);
  }
}
