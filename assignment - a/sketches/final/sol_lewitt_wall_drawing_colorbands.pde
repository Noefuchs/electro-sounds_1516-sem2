// My interpretation of Sol Lewitt's colourful wall drwaings.
// i decided to do an array of different coloured bands.

int y = 0;
int x = 0;

void setup() {
  size (960, 540);
  background (0);
}

void draw() {
  noLoop();

  for (int i = 0; i < 100; i++) {
  
    fill (random(255), random(255), random(255));
    noStroke();
    rect (i * 12, y, i * width, height);
    fill (random(255), random(255), random(255));
    rect (i * 12, y, width, height/2);
  }
}