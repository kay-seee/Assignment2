Spot sp; //Declaring objects for each shape
Square sq;
Triangle tr;


void setup()
{
  size(500, 500);
  noStroke();

  //Instanciating the spot, square and triangle objects
  sp = new Spot(250, 250, 60);
  sq = new Square(290, 290, 70);
  tr = new Triangle(150, 110, 125, 230, 175, 230);
}


void draw() {
  background(0);

  //Calls the methods for display and grow for each sp(spot), sq(square) and tr(triangle)
  sp.display();
  sp.grow();

  sq.display();
  sq.grow();

  tr.display();
  tr.grow();

  //Calls the methods for move left, right, up and down
  moveLeft();
  moveRight();
  moveUp();
  moveDown();
}

//Method for checking if uppercase or lowercase letter 'l' is pressed and applying the corresponding action
void moveLeft() {
  if (keyPressed && (key == 'L' || key == 'l')) {
    sp.moveLeft();
    sq.moveLeft();
    tr.moveLeft();
    fill(random(255), random(255), random(255), 160);
  }
}

//Method for checking if uppercase or lowercase letter 'r' is pressed and applying the corresponding action
void moveRight() {
  if (keyPressed && (key == 'R' ||  key == 'r')) {
    sp.moveRight();
    sq.moveRight();
    tr.moveRight();
    fill(random(255), random(255), random(255), 160);
  }
}

//Method for checking if uppercase or lowercase letter 'u' is pressed and applying the corresponding action
void moveUp() {
  if (keyPressed && (key == 'U' ||  key == 'u')) {
    sp.moveUp();
    sq.moveUp();
    tr.moveUp();
    fill(random(255), random(255), random(255), 160);
  }
}

//Method for checking if uppercase or lowercase letter 'd' is pressed and applying the corresponding action
void moveDown() {
  if (keyPressed && (key == 'D' ||  key == 'd')) {
    sp.moveDown();
    sq.moveDown();
    tr.moveDown();
    fill(random(255), random(255), random(255), 160);
  }
}
