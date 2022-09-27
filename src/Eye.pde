class Eye implements FaceComponent{

  int widthEye;
  int heightEye;
  int radiusPupil;
  int radiusIris;
  int eyeOffsetX;
  int eyeOffsetY;
  int centerEyeX;
  int centerEyeY;
  int irisOffsetX;
  float leftEyeX;
  float rightEyeX;
  float eyeY;
  float leftIrisX;
  float rightIrisX;
  float irisY;
  float leftPupilX;
  float rightPupilX;
  float pupilY;
  
  float widthBrow;
  float heightBrow;
  float leftBrowX;
  float rightBrowX;
  float browY;
  
  Eye(Face f){
    widthEye = f.headRadius/2;
    heightEye = f.headRadius/5;
    eyeOffsetX = f.headRadius/2;
    eyeOffsetY =  f.headRadius/3;
    leftEyeX = f.headX-eyeOffsetX;
    rightEyeX = f.headX+eyeOffsetX;
    eyeY = f.headY+eyeOffsetY;
    radiusIris = int(heightEye*.95);
    irisOffsetX = int(eyeOffsetX*0.95);
    leftIrisX = f.headX-irisOffsetX;
    rightIrisX = f.headX+irisOffsetX;
    irisY = eyeY;
    radiusPupil = int(heightEye*.5);
    leftPupilX = leftIrisX;
    rightPupilX = rightIrisX;
    pupilY = eyeY;
    leftBrowX = leftEyeX;
    rightBrowX = rightEyeX;
    browY = f.headY+eyeOffsetY*0.5;
    widthBrow = widthEye*0.8;
    heightBrow = heightEye*0.4;
  }
  
  void drawComponent(Face f){

    drawEye();
    drawIris();
    drawPupil();
    drawEyebrow();
  }
  
  void drawEye(){
    drawLeftEye();
    drawRightEye();
  }
  
  void drawLeftEye(){
    ellipse(leftEyeX, eyeY, widthEye, heightEye);
  }
  
  void drawRightEye(){
    ellipse(rightEyeX, eyeY, widthEye, heightEye);
  }
  
  void drawIris(){

    fillBrown();
    drawLeftIris();
    drawRightIris();
    fillWhite();
  }
  
  void drawLeftIris(){
    ellipse(leftIrisX, irisY, radiusIris, radiusIris);
  }
  
  void drawRightIris(){
    ellipse(rightIrisX, irisY, radiusIris, radiusIris);
  }
  
  void drawPupil(){
   
    fillBlack();
    drawLeftPupil();
    drawRightPupil();
    fillWhite();
  }
  
  void drawLeftPupil(){
    ellipse(leftPupilX, pupilY, radiusPupil, radiusPupil);
  }
  
  void drawRightPupil(){
    ellipse(rightPupilX, pupilY, radiusPupil, radiusPupil);
  }
  
  void drawEyebrow(){
    
    fillBlack();
    drawLeftEyebrow();
    drawRightEyebrow();
    fillWhite();
  }
  
  void drawLeftEyebrow(){
    ellipse(leftBrowX, browY, widthBrow, heightBrow);
  }
  
  void drawRightEyebrow(){
    ellipse(rightBrowX, browY, widthBrow, heightBrow);
  }
}
