class Shape {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  
  float radius;
  float xSize;
  float ySize;
  
  color rColor;
  color gColor;
  color bColor;

  Shape(float x, float y, float xSpeed, float ySpeed, float radius) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.radius = radius;
  }
  
  Shape(float x, float y, float xSpeed, float ySpeed, float xSize, float ySize) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.xSize = xSize;
    this.ySize = ySize;
  }

  void move() {
    x += xSpeed;
    if (x <= radius/2 || x >= width-radius/2 || x <= xSize/2 || x >= width-xSize/2) {
      xSpeed *= -1;
      changeColor(0, 255);
    }

    y += ySpeed;
    if (y <= radius/2 || y >= height-radius/2 || y <= ySize/2 || y >= width-ySize/2) {
      ySpeed *= -1;
      changeColor(0, 255);
    }
  }
  
  void changeColor(float min, float max){
    rColor = round(random(min, max));
    gColor = round(random(min, max/2));
    bColor = round(random(max/2, max));
  }

  void display() {
    textAlign(CENTER);
    noStroke();   
   
    fill(rColor, gColor, bColor);
    ellipse(x, y, radius, radius);
    rectMode(CENTER);
    rect(x,y,xSize,ySize);
  }
}
