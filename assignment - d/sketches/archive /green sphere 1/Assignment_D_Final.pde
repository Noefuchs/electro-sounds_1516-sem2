float r = random(0.75, 2);

void setup() {
  size(960, 540, P3D);
  background(0);
}

void draw() {
  background(0);
  noFill();
  smooth(4);

  stroke(random(100), 255, random(100));
  //strokeWeight(random(r));

  translate(width/2, height/2);
  //scale(r);

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

      sphere(100 * i + i);
    } else {
      sphere(100);
    }
  }
    //saveFrame("output/Ass_D_####.tif");
  if(frameCount > 2501) { 
    noLoop();
  }
}