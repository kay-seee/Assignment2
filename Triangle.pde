class Triangle {
  int x1;
  int y1;
  int x2;
  int y2;
  int x3;
  int y3;

  Triangle() { //Default constructor, doesn't return anything
  }

  //Constructor that sets the initial positiona and size of the triangle
  Triangle (int x1, int y1, int x2, int y2, int x3, int y3) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.x3 = x3;
    this.y3 = y3;
  }

  //Method to display the square
  void display() {
    triangle (x1, y1, x2, y2, x3, y3);
  }

  //Method to move the triangle left 5px
  void moveLeft() {
    if (x1 > 0 && x2 > 0 && x3 > 0) {
      x1 -= 5;
      x2 -= 5;
      x3 -= 5;
    }
  }

  //Method to move the triangle right 5px
  void moveRight() {
    if (x1 < width && x1 < width && x3 < width) {
      x1 += 5;
      x2 += 5;
      x3 += 5;
    }
  }

  //Method to move the triangle up 5px
  void moveUp() {
    if (y1 > 0 && y2 > 0 && y3 > 0) {
      y1 -= 5;
      y2 -= 5;
      y3 -= 5;
    }
  }

  //Method to move the triangle down 5px
  void moveDown() {
    if (y1 < height && y2 < height && y3 < height) {
      y1 += 5;
      y2 += 5;
      y3 += 5;
    }
  }


  //Additional method to show the triangle grow and shrink by 2px.
  //This code did not work as expected - see README
  void grow() {
    if (mousePressed && mouseButton == LEFT) {
      if (x1 + 2 < width && x2 + 2 < width && x3 + 2 < width &&
        y1 + 2 < width && y2 + 2 < width && y3 + 2 < width ) {
        x1 += 2;
        y1 += 2;
        x2 += 2;
        y2 += 2;
        x3 += 2;
        y3 += 2;
      }
    } else if
      (mousePressed && mouseButton == RIGHT) {
      if (x1 - 2 > 10 && x2 - 2 > 10 && x3 - 2 > 10 &&
        y1 - 2 > 10 && y2 - 2 > 10 && y3 - 2 > 10) {
        x1 -= 2;
        y1 -= 2;
        x2 -= 2;
        y2 -= 2;
        x3 -= 2;
        y3 -= 2;
      }
    }
  }
}
