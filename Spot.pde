class Spot {
  int xCoord;
  int yCoord;
  int diameter;


  //Default constructor
  Spot() {
  }

  // Constructor, sets the initial position and size of spot
  Spot(int xCoord, int yCoord, int diameter) {
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    this.diameter = diameter;
  }

  //Method to display the spot
  void display() {
    ellipse(xCoord, yCoord, diameter, diameter);
  }

  //Method to move the spot to the left 5px
  void moveLeft() {
    if (xCoord > 0 + 25) {
      xCoord -= 5;
    }
  }

  //Method to move the spot to the right 5px
  void moveRight() {
    if (xCoord < width - 25) {
      xCoord += 5;
    }
  }

  //Method to move the spot up 5px
  void moveUp() {
    if (yCoord > 25) {
      yCoord -= 5;
    }
  }

  //Method to move the spot down by 5px
  void moveDown() {
    if (yCoord < height - 25) {
      yCoord += 5;
    }
  }

  //Additional method to show the spot growing & shrinking in size by 2px
  void grow() {
    if (mousePressed && mouseButton == LEFT) {
      if (diameter <350 ) {
        diameter += 2;
      }
    } else if
      (mousePressed && mouseButton == RIGHT) {
      if (diameter > 10) {
        diameter -= 2;
      }
    }
  }
}
