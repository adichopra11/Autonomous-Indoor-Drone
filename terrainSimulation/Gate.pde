class Gate {
  
  int x, z;
    
  Gate(int _x, int _z) {
    x = _x;
    z = _z;
  }
  
  void show() {
    pushMatrix();
    
    translate(0, 0, z);
    rectMode(CENTER);
    
    strokeWeight(8);
    stroke(0, 255, 255);
    point(x, height / 2);
    
    strokeWeight(4);
    stroke(247, 181, 0);
    noFill();
    
    rect(x, height / 2, 100, 55);
    
    stroke(0);
    line(x, height / 2 + 27.5, x, height);
    
    popMatrix();
  }
  
}
