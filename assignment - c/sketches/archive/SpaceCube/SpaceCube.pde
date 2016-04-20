void setup() {
  size(960, 540, P3D);
  background(0);
  smooth(8);
}

void draw() {
  float r = random(0.5, 1);
  //noLoop();
  background(0);
  noFill();
  stroke(255, random(100));
  strokeWeight(random(r));

  translate(width/2, height/2);

  rotateX(frameCount / 100.0);
  rotateY(frameCount / 200.0);
  rotateZ(frameCount / 300.0);


  for (int i = 0; i < 10; i++) {
    rotateX(frameCount / 400.0);
    rotateY(frameCount / 800.0);
    rotateZ(frameCount / 1600.0);
    //box(100, 100, 100 * i);
    box(300 + i * i);

    //ellipse(0, 0, 20 * i, 20 * i);
    //ellipse(25, 25 * i, 25* i, 25 * i);
    //noStroke();

    sphereDetail(5);
    sphere(100 + i);


    //saveFrame("Frames-####.png");
  }
}