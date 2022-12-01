class Player {
  //vars
  int x;
  int y;
  int h;
  int w;

  boolean isMovingLeft;
  boolean isMovingRight;
  boolean isMovingUp;
  boolean isMovingDown;

  int speed;

  int left;
  int right;
  int top;
  int bottom;
  int leftBound;
  int rightBound;
  int topBound;
  int bottomBound;

  int score;

  int health=3;

  boolean canGetHit;


  //constructor
  Player(int startingX, int startingY, int startingW, int startingH) {
    x=startingX;
    y=startingY;
    w=startingW;
    h=startingH;

    isMovingLeft=false;
    isMovingRight=false;
    isMovingUp=false;
    isMovingDown=false;

    speed= 10;

    canGetHit=true;

    left=x-w/3;
    right=x+w/3;
    top=y-h/3;
    bottom=y+h/3;

    leftBound=x-w/3;
    rightBound=x+w/3;
    topBound=y-h/3;
    bottomBound=y+h/3;

    score = 0;

  }
  //functions
  void render() {
    rectMode(CENTER);
    fill(255, 100, 100);
    rect(x, y, w, h);
  }
  void move() {
    left=x-w/2;
    right=x+w/2;
    top=y-h/2;
    bottom=y+h/2;
    //hit box
    leftBound=x-w/2;
    rightBound=x+w/2;
    topBound=y-h/2;
    bottomBound=y+h/2;

    if (isMovingLeft==true) {
      x=x-speed;
    }
    if (isMovingRight==true) {
      x=x+speed;
    }
    if (isMovingUp==true) {
      y=y-speed;
    }
    if (isMovingDown==true) {
      y=y+speed;
    }
  }

  void collision(Ball aball) {
    if (topBound< aball.BallBottom) {
      if (bottomBound> aball.BallTop) {
        if (leftBound<aball.BallRight) {
          if (rightBound>aball.BallLeft) {
            collideSound.play();
            health-=1;
            aball.y = y-aball.d;
          }
        }
      }
    }
  }
}
