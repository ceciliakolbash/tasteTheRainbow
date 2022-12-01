class Ball {
  /*
  Class variables
   */
  float x;
  float y;
  float d;
  color fillColor;

  int xSpeed;
  int ySpeed;

  //ball hit boxes
  float BallBottom;
  float BallTop;
  float BallRight;
  float BallLeft;
  /*
  Constructor
   */

  Ball() {
    int speedMag = 10;

    ySpeed = int(random(-speedMag, -6));


    if (ySpeed == 0) {
      ySpeed = speedMag;
    }


    x = int(random(width/4, 3*width/4));
    y = height;
    d = 20;
    fillColor = color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));

    BallBottom= y+(d/2);
    BallTop=y-(d/2);
    BallRight=x+(d/2);
    BallLeft=x-(d/2);
  }

  void render() {
    fill(fillColor);
    circle(x, y, d);
  }

  /*
This function takes updates the position the ball according to its speed.
   */
  void move() {
    y += ySpeed;
    //hit box
    BallBottom= y+(d/2);
    BallTop=y-(d/2);
    BallRight=x+(d/2);
    BallLeft=x-(d/2);
  }

  // This function resets the ball to the bottom

  void reset() {
    if (y<0) {
      y=height;
      x=random(0, width);
    }
  }
}
