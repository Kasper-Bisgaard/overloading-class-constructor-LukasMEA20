Shape circle1, circle2;

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
  circle1 = new Shape(random(size, width-size), random(size, height-size), random(minSpeed, maxSpeed), random(minSpeed, maxSpeed), size);
  circle2 = new Shape(random(size, width-size), random(size, height-size), random(minSpeed, maxSpeed), random(minSpeed, maxSpeed), size);
}

void draw() {
  background(200);
  circle1.move();
  circle2.move();
  
  circle1.display();
  circle2.display();
  
  circle1.overlap(circle2);
}

/*void mouseClicked() {
  switcher = !switcher;
  if (switcher) {
   switcher = false;
   } else if (!switcher) {
   switcher = true;
   }
}*/
