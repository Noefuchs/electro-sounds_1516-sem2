//Gunahaln Subas
//Inspired by Ryoji Ikeda's test pattern

float r_lines = 0;
float x = 0;

void setup()
{
  size(960, 540);
  background(0);
  smooth();
  stroke(255);
  strokeWeight(random(2));
}

void draw()
{
  float line_dist = random(100);

  r_lines = r_lines + 10;

  line(x, line_dist + r_lines, x +240, line_dist + r_lines);
  line(x+240, line_dist + r_lines*2, x+480, line_dist + r_lines*2);
  line(x+480, line_dist + r_lines, x+720, line_dist + r_lines);
  line(x+720, line_dist + r_lines*2, x + 960, line_dist + r_lines*2);

  println(r_lines);
  //saveFrame("frames/####.png");

} 