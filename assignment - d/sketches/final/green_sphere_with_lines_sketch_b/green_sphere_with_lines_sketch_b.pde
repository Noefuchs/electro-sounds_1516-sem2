//Gunahlan Subas_16604
//Final Processing Assignment
//This sketch uses some elements of a sketch by Alexander Miller who reverse engineered 
//the generative art by john whitney.
// https://www.youtube.com/watch?v=LaarVR1AOvs - the core elements from Alexander Miller 

import codeanticode.syphon.SyphonServer;

SyphonServer syphon;

int bg = color(0);
int numLines = 100;
int numLines2 = 100;
int numLines3 = 1000;
boolean isScaling;

float t;

float x(float t) { 
  return sin(t/10) * 100;
}
float y(float t) {
  return cos(t/5) * 50;
}
float x1(float t) {
  return cos(t/20) * 200;
}
float y1(float t) {
  return sin(t/20) * 200;
}


boolean linesActive1;
boolean linesActive2;
boolean linesActive3;

void settings() {
  size(960, 540, P3D);
  PJOGL.profile = 1;
}


void setup() {
  
  syphon = new SyphonServer ( this, "p5-to-syphon" );
  //size(960, 540, P3D);
  smooth(8);
  setupDuration();
  
  
}

void draw() {
  background(bg);
  noFill();
  stroke(#3F7C36);
  strokeWeight(1);
  translate(width/2, height/2);

  if (linesActive1==true) { // line1
    for (int i = 0; i < numLines; i++)
    {
      //scale(random(0.75, 2));
      line(x1 (t + i), y (t * i), x (t + i), y1(t * i));
    }
  }

  if (linesActive2==true) { //line2

    for (int i = 0; i < numLines2; i++)
    {
      stroke(#105A05);
      strokeWeight(random(1));
      line(x (t * i), y (t + i), x1 (t * i), y1(t + i));
    }
  }

  if (linesActive3==true) { //rectangle
    for (int i = 0; i < numLines3; i++)
    {
      stroke(0, random(255), 0);
      strokeWeight(4);
      scale(random(0.75, 1));
      rect(x1 (t * i), y (t * i), x (t * i), y1(t * i));
    }
  }
  rotateX(frameCount / 200.0);
  rotateY(frameCount / 300.0);
  rotateZ(frameCount / 400.0);

  stroke(random(100), 255, random(100));

  for (int i = 0; i < 10; i++) {
    rotateX(frameCount / 500.0);
    rotateY(frameCount / 600.0);
    rotateZ(frameCount / 700.0);


    sphereDetail(5, 2);
    sphere(100);


    if ( (keyPressed == true && key == 'p') || isScaling) {
      rotateX(frameCount / 200.0);
      rotateY(frameCount / 300.0);
      rotateZ(frameCount / 400.0);
      stroke(random(255));
      strokeWeight(0.25);
      scale(frameCount / 150);
      //sphereDetail(1, 2);
      //sphere(10);
      //scale(1);
      box(100 * i + i);
      sphereDetail(5, 5);
      sphere(10);
    } else {
      sphere(100);
    }
    t += frameCount * 1.0;
    if (frameCount%20==0) {
      isScaling = false;
    }
  }
  //saveFrame("output/Ass_D_####.tif");
  //if (frameCount > 2501) { 
  //noLoop();
  //}
  
  syphon.sendScreen();
}




void keyPressed( ) {
  switch(key) {
    case('1'):
    bg = color(200);
    break;
    case('2'):
    bg = color(0);
    break;
    case('3'):
    bg = color(50);
    break;
    case('4'):
    linesActive1 = !linesActive1;
    break;
    case('5'):
    linesActive2 = !linesActive2;
    break;
    case('6'):
    linesActive3 = !linesActive3;
    break;
  }
}