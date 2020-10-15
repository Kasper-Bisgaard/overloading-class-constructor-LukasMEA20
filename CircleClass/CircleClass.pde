Shape circle;
Shape square;

float xPosition;
float yPosition;
float minSpeed = -3;
float maxSpeed = 3;
float xSpeed = random(minSpeed, maxSpeed);
float ySpeed = random(minSpeed, maxSpeed);
float minRadius = 20;
float maxRadius = 40;
float size = random(minRadius, maxRadius);

boolean switcher = true;

void setup() {
  size(300, 300);
  rectMode(CENTER);
  xPosition = random(size, width-size);
  yPosition = random(size, height-size);
  square = new Shape(xPosition, yPosition, xSpeed, ySpeed, size, size);
  circle = new Shape(xPosition, yPosition, xSpeed, ySpeed, size);
}

void draw() {
  background(200);
  circle.move();
  square.move();
  if (switcher) {
    circle.display();
    text("Click to change to a square!", width/2, height/20);
  } else if (!switcher) {
    square.display();
    text("Click to change to a circle!", width/2, height/20);
  }
}

void mouseClicked() {
  if (switcher) {
    switcher = false;
  } else if (!switcher) {
    switcher = true;
  }
}
