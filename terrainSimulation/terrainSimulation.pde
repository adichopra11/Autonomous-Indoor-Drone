Gate[] gates;

int dx = 0;

void setup() {
  size(640, 480, P3D);
  
  float fov     = PI / 3;
  float aspect  = 4.0 / 3.0;
  float cameraZ = (480.0 / 2.0) / tan(fov / 2.0);
  float zNear   = cameraZ / 10.0;
  float zFar    = cameraZ * 10.0;
  perspective(fov, aspect, zNear, zFar);
  
  gates = new Gate[3];
  
  for (int i = 0; i < gates.length; i++) {
    gates[i] = new Gate(int(random(50, 450)), -i * 100);
  }
}

void draw() {
  background(255);
  stroke(255, 0, 0);
  strokeWeight(8);
  point(width / 2, height / 2);
  
  if (keyPressed) {
    if (key == 'd' || key == 'D') {
      println("RIGHT");
      dx -= 1;
    } else if (key == 'a' || key == 'A') {
      println("LEFT");
      dx += 1;
    }
  }
  
  translate(dx, 0, 0);
  
  //pushMatrix();
  
  //translate(0, height, 0);
  //rotateX(-PI / 2.0);
  
  //fill(0, 0, 0, 180);
  //strokeWeight(0);
  //rectMode(CORNERS);
  //rect(0, 0, width, 1500);
  
  //popMatrix();
  
  
  for (Gate gate : gates) {
    gate.show();
  }
  
  if (!mousePressed) {
    for (Gate gate : gates) {
      gate.z += 1;
    }
  }
  
  saveFrame("gate_simulation-####.png");
  
}
