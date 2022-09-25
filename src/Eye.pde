class Eye implements FaceComponent{
  String side;
  int widthEye;
  int heightEye;
  int radiusPupil;
  int radiusIris;
  int eyeOffsetX;
  int eyeOffsetY;
  int centerEyeX;
  int centerEyeY;
  int irisOffsetX;
  float leftBrowAngle;
  float rightBrowAngle;
  Eye(String side){
    this.side = side;
    leftBrowAngle = PI/3;
    rightBrowAngle = 2*PI/3;
  }
  
  void drawComponent(Face f){
    widthEye = f.headRadius/2;
    heightEye = f.headRadius/5;
    eyeOffsetX = f.headRadius/2;
    eyeOffsetY =  f.headRadius/3;
    drawEye(f);
    drawIris(f);
    drawPupil(f);
    drawEyebrow(f);
  }
  
  void drawEye(Face f){
    if(side == "left"){
      ellipse(f.headX-eyeOffsetX, f.headY+eyeOffsetY, widthEye, heightEye);
    }
    else if(side == "right"){
      ellipse(f.headX+eyeOffsetX, f.headY+eyeOffsetY, widthEye, heightEye);
    }
  }
  
  void drawIris(Face f){
    radiusIris = int(heightEye*.95);
    irisOffsetX = int(eyeOffsetX*0.95);
    float red = 128;
    float green = 64;
    float blue = 0;
    fill(red, green, blue);
    
    if(side == "left"){
      ellipse(f.headX-irisOffsetX, f.headY+eyeOffsetY, radiusIris, radiusIris);
    }
    else if(side == "right"){
      ellipse(f.headX+irisOffsetX, f.headY+eyeOffsetY, radiusIris, radiusIris);
    }    
    
    fill(255);
  }
  
  void drawPupil(Face f){
    radiusPupil = int(heightEye*.5);
    
    fill(0);
    if(side == "left"){
      ellipse(f.headX-irisOffsetX, f.headY+eyeOffsetY, radiusPupil, radiusPupil);
    }
    else if(side == "right"){
      ellipse(f.headX+irisOffsetX, f.headY+eyeOffsetY, radiusPupil, radiusPupil);
    } 
    fill(255);
  }
  
  void drawEyebrow(Face f){
    float widthBrow = widthEye*0.8;
    float heightBrow = heightEye*0.4;
    fill(0);
    if(side == "left"){
      //translate(f.headX-eyeOffsetX, f.headY+eyeOffsetY*0.5);
      //rotate(leftBrowAngle);
      //ellipse(0, 0, widthBrow, heightBrow);
      //translate(-(f.headX-eyeOffsetX),-(f.headY+eyeOffsetY*0.5));
      //rotate(-leftBrowAngle);
      
      ellipse(f.headX-eyeOffsetX, f.headY+eyeOffsetY*0.5, widthBrow, heightBrow);
    }
    else if(side == "right"){
      ellipse(f.headX+eyeOffsetX, f.headY+eyeOffsetY*0.5, widthBrow, heightBrow);
    }
    //rotate(0);
    fill(255);
  }
}
