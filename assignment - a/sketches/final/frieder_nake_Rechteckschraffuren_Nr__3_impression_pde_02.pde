//My attempt at coding frieder_nake_Rechteckschraffuren_NR_3
//i warn you that this is woefully painful spaghetti coding,
//i am sure there is a logical way to recreate this.

int x = 150;
int y = 400;
int x1 = 200;
int y1 = 430;
int x2 = 400;
int y2 = 370;
int spacing = 3;
int len = 100;
int endLines = 290;
float r = 129;
float g = 117;
float b = 125;
float a = 55;
float r1 = 180;
float g1 = 29;
float b1 = 29;
float a1 = 255;


size(960, 540); 
background(#F5F2E6);

//translate(width/2,height/2);

//lines

stroke(255, 0, 0, a1-155);
while (x1 <= endLines) {
  line (x1, y1, x1, y1+len);
  x1 = x1 + spacing;
}
while (y1 <width) {
  rect (330, y1-65, 50, 0);
  y1 = y1 + spacing;
}

stroke(0);
while (x1 <= endLines) {
  line (x1+100, y1, x1, y1+len);
  x1 = x1 + spacing;
}
//

noStroke();

//burgundy shapes
fill(r1, g1, b1, a1-20);
rect(x+219, y-180, 15, 110); // burg rect 1
fill(r1, g1, b1, a1-55);
rect(x+182, y-190, 25, 55); // burg rect 2
fill(r1, g1, b1, a1-155);
rect(x+162, y-182, 30, 105); // burg rect 3
fill(r1, g1, b1, a1-200);
rect(x+90, y-150, 30, 35); // burg rect 4

// grey shapes
fill(r, g, b, a);
rect(x+22, y-90, 70, 75);// grey rect/square 1 
rect(x+95, y-65, 45, 55);// grey rect 5  
fill(r, g, b, a+10);
rect(x+80, y-140, 30, 70);// grey rect 2
fill(r, g, b, a+35);
rect(x+90, y-200, 50, 100);// grey rect 3
fill(r, g, b, a-5);//grey rect 4
rect(x+85, y-110, 75, 115);
fill(r, g, b, a+20);
rect(x+95, y-95, 30, 135);// grey rect 6

// black shapes
fill(0, 0, 0, 255);
rect(x+10, y+10, 70, 4.5);//1st black rectangle
rect(x+92, y+10, 7.5, 75);//2nd black rectangle
rect(x+163, y-90, 37, 120);//3rd black rectangle
rect(x+207, y-120, 10, 100);//4th black rectangle