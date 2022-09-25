class Face{
  ArrayList<FaceComponent> faceComponents;
  public int yOffsetCenter;
  public int xOffsetCenter;
  public int headSize;
  public int headRadius;
  public int headX;
  public int headY;
  
  Face(){
    yOffsetCenter = -width/8;
    headSize = width/3;
    headRadius = headSize/2;
    xOffsetCenter = 0;
    headX = getCircleCenteredX() + xOffsetCenter;
    headY = getCircleCenteredY() + yOffsetCenter;
  
    faceComponents = new ArrayList<FaceComponent>();
    
    faceComponents.add(new Ear(this, "left"));
    faceComponents.add(new Ear(this, "right"));
    
    faceComponents.add(new HeadOutline());
    
    faceComponents.add(new JawOutline());
    
    faceComponents.add(new VerticalGuideLine());
    
    faceComponents.add(new EyeGuideLine());
    
    faceComponents.add(new MouthGuideLine());
    
    faceComponents.add(new NoseGuideLine());
    
    faceComponents.add(new Eye("left"));
    faceComponents.add(new Eye("right"));
    
    faceComponents.add(new Nose(this));
    
    faceComponents.add(new Mouth(this));
    
  }
  
  void drawFace(){
    for(FaceComponent component: faceComponents){
      component.drawComponent(this);
    }
  }
  
}
