//float r = random(0.75, 2);

void setup() {
  size(960, 540, P3D);
  background(0);
  smooth(4);
}

void draw() {
  background(0);
  noFill();

  stroke(random(100), 255, random(100));
  strokeWeight(1);
  translate(width/2, height/2);

  rotateX(frameCount / 200.0);
  rotateY(frameCount / 300.0);
  rotateZ(frameCount / 400.0);


  for (int i = 0; i < 10; i++) {
    rotateX(frameCount / 500.0);
    rotateY(frameCount / 600.0);
    rotateZ(frameCount / 700.0);

    sphereDetail(5, 2);
    sphere(100);

    if (keyPressed == true) {

      //stroke(#2C951D);
      stroke(random(255));
      strokeWeight(0.25);
      scale(frameCount / 250.0);
      //sphereDetail(1, 2);
      //sphere(10);
      //scale(1);
      box(100 * i + i);
    } else {
      sphere(100);
    }
  }
  //saveFrame("output/Ass_D_####.tif");
  //if (frameCount > 2501) { 
  //noLoop();
  //}
}