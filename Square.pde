class Square {
  int xCoord;
  int yCoord;
  int diameter;


  //Default constructor doesn't return anything
  Square() {
  }

  //Constructor, sets the initial position and size of square
  Square(int xCoord, int yCoord, int diameter) {
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    this.diameter = diameter;
  }

  //Method that will display the sqaure
  void display() {
    square(xCoord, yCoord, diameter);
  }

  //Method to move the square left 5px
  void moveLeft() {
    if (xCoord > 0) {
      xCoord -= 5;
    }
  }

  //Method to move the square right 5px
  void moveRight () {
    if (xCoord + diameter < width) {
      xCoord += 5;
    }
  }

  //Method to move the square up 5px
  void moveUp() {
    if (yCoord > 0) {
      yCoord -= 5;
    }
  }

  //Method to move the square down 5px
  void moveDown() {
    if (yCoord + diameter < height) {
      yCoord += 5;
    }
  }


  //Additional method added to show the square growing & shrinking the square by 2px
  void grow() {
    if (mousePressed && mouseButton == LEFT) {
      if (diameter < 350) { //Boundary to stop square from getting any bigger
        diameter += 2;
      }
    } else if
      (mousePressed && mouseButton == RIGHT) {
      if (diameter > 10) { //Boundary to stop sqaure from getting any smaller
        diameter -= 2;
      }
    }
  }
}
