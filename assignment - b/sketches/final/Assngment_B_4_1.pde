//parametric curves in motion: points and lines 
//Curvature,Interference and Perspective

int numLines = 25;
int numPoints = 0;
float t;
float x(float t) {
  return sin(t/10) * 240;
}
float y(float t) {
  return cos(t/20) * 480;
}
float x1(float t) {
  return sin(t/10) * 480;
}
float y1(float t) {
  return cos(t/10) * 240;
}
 float x2(float t) {
  return sin(t/10) * 480;// + cos(t/20) * 200;
}
float y2(float t) {
  return cos(t/20) * 480;// + cos(t/10) * 200;
}
float x3(float t) {
  return sin(t/10) * 100;
}
float y3(float t) {
  return cos(t/20) * 200;
}
float x4(float t) {
  return sin(t/10) * 200;
}
float y4(float t) {
  return cos(t/10) * 200;
}
float x5(float t) {
  return sin(t/10) * 100;// + cos(t/20) * 200;
}
float y5(float t) {
  return cos(t/20) * 100;// + cos(t/10) * 200;
}


void setup()
{
  //fullScreen();
  size(960, 540);
  background(0);
}

void draw()
{  
  //noLoop();
  background(0);
  stroke(random(255), random(0), random(0), random(255));
  strokeWeight(random(1));
  noFill();

  translate(width/2, height/2);

  for (int i = 0; i < numLines; i++)
  {
    line(x1 (t + i), y1 (t + i), x2 (t + i), y2(t + i));
    line(x1 (t + i), y (t + i), x2 (t + i), y1(t + i));
    line(x1 (t + i), y2 (t + i), x2 (t + i), y(t + i));
    line(x (t + i), y (t + i), x1 (t + i), y1(t + i));
    line(x (t + i), y1 (t + i), x1 (t + i), y(t + i));
    line(x (t + i), y2 (t + i), x1 (t + i), y2(t + i));
    line(x2 (t + i), y2 (t + i), x (t + i), y(t + i));
    line(x2 (t + i), y1 (t + i), x (t + i), y2(t + i));
    line(x2 (t + i), y (t + i), x (t + i), y1(t + i));
    line(x4 (t + i), y4 (t + i), x5 (t + i), y5(t + i));
    line(x4 (t + i), y3 (t + i), x5 (t + i), y4(t + i));
    line(x4 (t + i), y5 (t + i), x5 (t + i), y3(t + i));
    line(x3 (t + i), y3 (t + i), x4(t + i), y4(t + i));
    line(x3 (t + i), y5 (t + i), x4 (t + i), y3(t + i));
    line(x3 (t + i), y4 (t + i), x4 (t + i), y5(t + i));
    line(x5 (t + i), y5 (t + i), x3 (t + i), y3(t + i));
    line(x5 (t + i), y4 (t + i), x3 (t + i), y5(t + i));
    line(x5 (t + i), y3 (t + i), x3 (t + i), y4(t + i));
  }

  stroke(255, 255, 255, random(255));
  strokeWeight(random(3));

  for (int i = 0; i < numPoints; i++)
  {
    point(x (t + i), y (t + i));
    point(x1(t + i), y2(t + i));
    point(x2(t + i), y1(t + i));
    point(x (t + i), y1(t + i));
    point(x1(t + i), y (t + i));
    point(x2(t + i), y (t + i));
    point(x (t + i), y2(t + i));
    point(x1(t + i), y1(t + i));
    point(x2(t + i), y2(t + i));
  }
  
 /* if (keyPressed) {
    if (key == 'b') {
    t = t-0.1;
    }*/
//}
  t += 0.1;
  //saveFrame("frames/####.png");
}

void keyPressed() {
  if (key == 'v') {
    numPoints = 25;
  } else {
    numPoints = 0;
  }
}