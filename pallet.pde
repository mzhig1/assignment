class paddle {
  float x,y,d;
  
  paddle() {
    y = height + 50;
    x = width /2;
    d = 300;
  }
  void show () {
  ellipse (x,y,d,d);
}
void act () {
  x = mouseX;
}
}
