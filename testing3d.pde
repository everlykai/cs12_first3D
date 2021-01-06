float rotx, roty;

void setup() {
  size(500, 400, P3D);
}

void draw() {
  background(0);
  
  ball(50, width/3, height/2, 0);
  ball(50, width*2/3, height/2, 0);
  cube(50, #3B766C, width/3, height/2, 0);
  cube(50, #5B66AD, width*2/3, height/2, 0);
}
 
void ball(float size, float x, float y, float z) {
  pushMatrix();
  translate(x, y, z);
  rotateX(rotx);
  rotateY(roty);
  noFill();
  stroke(255);
  strokeWeight(0.5);
  sphere(size);
  popMatrix();
}

void cube(float size, color c, float x, float y, float z) {
  pushMatrix();
  translate(x, y, z);
  rotateX(rotx);
  rotateY(roty);
  fill(c);
  stroke(255);
  strokeWeight(2);
  box(size);
  popMatrix();
}
void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*-0.01;
}
