//Assignment_C
//The inspiration was from John Whitney Sr's Matrix III

int numLines = 100;
int numPoints = 100;

float t;

void setup()
{
  size(960, 540);
  background(random(10));
}

void draw()
{  
  background(random(150), 0, 0);
  stroke(random(0), random(0), random(0));
  stroke(random(255));
  strokeWeight(random(2));
  noFill();

  translate(width/2, height/2);
  scale(random(0.25, 1));

  for (int i = 0; i < numLines; i++)
  {
    line(x (t * i), y2 (t + i), x2 (t + i), y1(t * i));
  }

  stroke(random(255), random(255), random(255));
  strokeWeight(random(3));

  for (int i = 0; i < numPoints; i++)
  {
    //ellipse(x2 (t + i), y2 (t), x3 (t + i), y3(t));
    //point(x2 (t + i), y2(t + i));
    //point(x3 (t + i), y3(t + i));
  }
  //saveFrame("frames/####.png");
  t += frameRate / 200.0;
}

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
float x2(float t) {
  return sin(t/20) * 200;
}
float y2(float t) {
  return cos(t/10) * 100;
}
float x3(float t) {
  return cos(t/15) * 150;
}
float y3(float t) {
  return sin(t/20) * 200;
}