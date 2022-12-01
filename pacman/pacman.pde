//declare my vars
int state;
int playerScore;
PImage rainbowImg;
PImage unicornImg;
PImage unicornnImg;
PImage galaxyBg;
PImage startBg;
PImage arrowImage;
import processing.sound.*;
//declare sound file
SoundFile movementSound;
//sound file background
SoundFile backgroundSound;
//collide sound
SoundFile collideSound;
//declaring my vars
Player p1;
Player p2;
//obstacles
Obstacle o1;
Obstacle o2;
Obstacle o3;
Obstacle o4;
Obstacle o5;
Obstacle o6;
Obstacle o7;
Obstacle o8;
Obstacle o9;
Obstacle o10;
Obstacle o11;
Obstacle o12;
Obstacle o13;
Obstacle o14;
Obstacle o15;
Obstacle o16;
Obstacle o17;
Obstacle o18;
Obstacle o19;
Obstacle o20;
Obstacle o21;
Obstacle o22;
Obstacle o23;
Obstacle o24;
Obstacle o25;
Obstacle o26;
Obstacle o27;
Obstacle o28;
Obstacle o29;

ArrayList<Obstacle> obstacleList;
Ball[]ballArray= new Ball[5];
color[] colorArray={color(255)};
int colorIndex=0;

PImage[] rainbowImages = new PImage[7];
PImage[] unicornImages= new PImage[3];
PImage[] unicornnImages=new PImage[3];
Animation unicornAnimation;
Animation rainbowAnimation;
Animation unicornnAnimation;

ArrayList<Rainbow> rainbowList;

void setup() {
  //background
  galaxyBg=loadImage("galaxy.png");
  galaxyBg.resize(1200, 800);
  //start img
  startBg=loadImage("start.png");
  startBg.resize(1200, 800);
  // arrow image
  arrowImage = loadImage("arrow0.png");
  imageMode(CENTER);
  arrowImage.resize(width/10, height/10);
  //unicorns image
  unicornImg= loadImage("unicorn0.png");
  imageMode(CENTER);
  unicornImg.resize(unicornImg.width, unicornImg.height);
  unicornnImg= loadImage("unicornn0.png");
  imageMode(CENTER);
  unicornnImg.resize(unicornnImg.width, unicornnImg.height);
  //rainbow image
  rainbowImg = loadImage("rainbow1.png");
  imageMode(CENTER);
  rainbowImg.resize(rainbowImg.width, rainbowImg.height);
  //sound
  backgroundSound=new SoundFile(this, "background.wav");
  backgroundSound.amp(.2);
  movementSound=new SoundFile(this, "movement.wav");
  movementSound.amp(.7);
  movementSound.rate(1);
  collideSound=new SoundFile(this, "collide.wav");
  collideSound.rate(1.5);
  collideSound.amp(3);
  size(1200, 800);

  //initalize my vars
  p1=new Player(50, 340, 30, 30);
  p2=new Player (1150, 340, 30, 30);
  //
  o1=new Obstacle(50, 300, 700, 30);
  o2=new Obstacle (50, 380, 700, 30);
  o3=new Obstacle (520, 340, 100, 90);
  o4=new Obstacle (200, 495, 30, 200);
  o5=new Obstacle (640, 320, 40, 40);
  o6=new Obstacle( 640, 370, 40, 40);
  o7=new Obstacle (1160, 300, 700, 30);
  o8=new Obstacle(1160, 380, 700, 30);
  o9=new Obstacle(725, 345, 30, 90);
  o10=new Obstacle(100, 545, 30, 300);
  o11=new Obstacle(300, 545, 30, 300);
  o12=new Obstacle(400, 600, 40, 40);
  o13=new Obstacle(400, 500, 40, 40);
  o14=new Obstacle(400, 700, 40, 40);
  o15=new Obstacle(530, 600, 60, 200);
  o16=new Obstacle(720, 600, 200, 150);
  o17=new Obstacle(1100, 545, 30, 300);
  o18=new Obstacle(900, 445, 30, 100);
  o19=new Obstacle(1000, 495, 30, 200);
  o20=new Obstacle(650, 200, 200, 30);
  o21=new Obstacle(100, 160, 30, 250);
  o22=new Obstacle(200, 210, 30, 150);
  o23=new Obstacle(300, 260, 30, 50);
  o24=new Obstacle(370, 120, 150, 70);
  o25= new Obstacle(600, 90, 60, 90);
  o26=new Obstacle(700, 90, 60, 90);
  o27=new Obstacle(900, 170, 30, 230);
  o28=new Obstacle(1000, 210, 30, 150);
  o29=new Obstacle(1100, 170, 30, 230);

  obstacleList= new ArrayList<Obstacle>();

  obstacleList.add(o1);
  obstacleList.add(o2);
  obstacleList.add(o3);
  obstacleList.add(o4);
  obstacleList.add(o5);
  obstacleList.add(o6);
  obstacleList.add(o7);
  obstacleList.add(o8);
  obstacleList.add(o9);
  obstacleList.add(o10);
  obstacleList.add(o11);
  obstacleList.add(o12);
  obstacleList.add(o13);
  obstacleList.add(o14);
  obstacleList.add(o15);
  obstacleList.add(o16);
  obstacleList.add(o17);
  obstacleList.add(o18);
  obstacleList.add(o19);
  obstacleList.add(o20);
  obstacleList.add(o21);
  obstacleList.add(o22);
  obstacleList.add(o23);
  obstacleList.add(o24);
  obstacleList.add(o25);
  obstacleList.add(o26);
  obstacleList.add(o27);
  obstacleList.add(o28);
  obstacleList.add(o29);

  for (int i =0; i<ballArray.length; i++) {
    ballArray[i]=new Ball();
  }

  //loading the image
  for (int i=0; i<unicornImages.length; i++) {
    unicornImages[i]= loadImage("unicorn"+i+".png");
  }
  unicornAnimation= new Animation(unicornImages, 2, 2);

  for (int i=0; i<unicornnImages.length; i++) {
    unicornnImages[i]= loadImage("unicornn"+i+".png");
  }
  unicornnAnimation= new Animation(unicornnImages, 2, 2);

  for (int i = 0; i< rainbowImages.length; i++) {
    rainbowImages[i] = loadImage("rainbow"+i+".png");
  }

  rainbowAnimation = new Animation(rainbowImages, .01, .9);

  rainbowList = new ArrayList<Rainbow>();

  rainbowList.add(new Rainbow(300, 340));
  rainbowList.add(new Rainbow(500, 100));
  rainbowList.add(new Rainbow(150, 340));
  rainbowList.add(new Rainbow(50, 600));
  rainbowList.add(new Rainbow(50, 500));
  rainbowList.add(new Rainbow(50, 730));
  rainbowList.add(new Rainbow(150, 550));
  rainbowList.add(new Rainbow(150, 470));
  rainbowList.add(new Rainbow(250, 730));
  rainbowList.add(new Rainbow(250, 600));
  rainbowList.add(new Rainbow(250, 450));
  rainbowList.add(new Rainbow(350, 430));
  rainbowList.add(new Rainbow(350, 550));
  rainbowList.add(new Rainbow(350, 650));
  rainbowList.add(new Rainbow(470, 700));
  rainbowList.add(new Rainbow(470, 500));
  rainbowList.add(new Rainbow(520, 420));
  rainbowList.add(new Rainbow(670, 420));
  rainbowList.add(new Rainbow(670, 730));
  rainbowList.add(new Rainbow(770, 730));
  rainbowList.add(new Rainbow(800, 470));
  rainbowList.add(new Rainbow(890, 540));
  rainbowList.add(new Rainbow(890, 640));
  rainbowList.add(new Rainbow(1100, 730));
  rainbowList.add(new Rainbow(1050, 600));
  rainbowList.add(new Rainbow(1050, 450));
  rainbowList.add(new Rainbow(900, 340));
  rainbowList.add(new Rainbow(1050, 340));
  rainbowList.add(new Rainbow(50, 100));
  rainbowList.add(new Rainbow(50, 250));
  rainbowList.add(new Rainbow(150, 200));
  rainbowList.add(new Rainbow(150, 50));
  rainbowList.add(new Rainbow(260, 70));
  rainbowList.add(new Rainbow(260, 190));
  rainbowList.add(new Rainbow(390, 50));
  rainbowList.add(new Rainbow(390, 200));
  rainbowList.add(new Rainbow(600, 250));
  rainbowList.add(new Rainbow(700, 250));
  rainbowList.add(new Rainbow(830, 200));
  rainbowList.add(new Rainbow(830, 100));
  rainbowList.add(new Rainbow(950, 50));
  rainbowList.add(new Rainbow(950, 150));
  rainbowList.add(new Rainbow(950, 250));
  rainbowList.add(new Rainbow(1050, 100));
  rainbowList.add(new Rainbow(1050, 200));
  rainbowList.add(new Rainbow(1150, 50));
  rainbowList.add(new Rainbow(1150, 250));
  rainbowList.add(new Rainbow(1150, 500));
  rainbowList.add(new Rainbow(1150, 650));

  state=0;
}
void draw() {
  switch(state) {
  case 0:
    fill(color(0));
    background(startBg);
    textSize(70);
    text("Click Mouse to Start", 300, 500);

    textSize(100);
    text("Taste the Rainbow", 200, 325);


    break;

  case 1:
    //background music
    if (backgroundSound.isPlaying()==false) {
      backgroundSound.play();
    }


    background(galaxyBg);
    fill(color(255));
    text(playerScore, width- 60, 75);
    textSize(30);
    fill(color(255));
    text("SCORE", 900, 30);
    text(p2.score, 1050, 30);
    textSize(30);
    fill(color(255));
    text("SCORE", 200, 30);
    text(p1.score, 350, 30);
    textSize(30);
    fill(color(255));
    text("Lives", 700, 30);
    text(p2.health, 800, 30);
    textSize(30);
    fill(color(255));
    text("Lives", 400, 30);
    text(p1.health, 500, 30);
    textSize(30);
    unicornAnimation.display(p1.x, p1.y);
    p1.move();
    unicornnAnimation.display(p2.x, p2.y);
    p2.move();

    //for loop to go through everything in rainbowList
    for (Rainbow aRainbow : rainbowList) {
      aRainbow.render();
      aRainbow.collide(p1);
      aRainbow.collide(p2);
    }

    for (int i=rainbowList.size()-1; i >= 0; i--) {
      if (rainbowList.get(i).exists == false) {
        rainbowList.remove(i);
      }
    }

    //for loop to go through everything in obstacleList
    for (Obstacle anObstacle : obstacleList) {
      anObstacle.render();
      anObstacle.playerCollide(p1);
      anObstacle.playerCollide(p2);
    }
    for (int i =0; i<ballArray.length; i++) {
      p1.collision(ballArray[i]);
      p2.collision(ballArray[i]);
      ballArray[i].render();
      ballArray[i].move();
      ballArray[i].reset();
      image(arrowImage, ballArray[i].x, ballArray[i].y);
    }

    p1Loses();
    p2Loses();

    break;

  case 2:
    background(startBg);
    fill(color(0));
    textSize(100);
    textAlign(CENTER);
    text("PLAYER 2 WINS", width/2, 325);
    textSize(70);
    text("Click Mouse to Start", width/2, 500);
    break;

  case 3:
    background(startBg);
    fill(color(0));
    textSize(100);
    textAlign(CENTER);
    text("PLAYER 1 WINS", width/2, 325);
    textSize(70);
    text("Click Mouse to Start", width/2, 500);
    break;
  }
}

void keyPressed() {
  if (key=='a') {
    p1.isMovingLeft=true;
    movementSound.play();
    unicornAnimation.isAnimating=true;
  }
  if (key=='d') {
    p1.isMovingRight=true;
    movementSound.play();
    unicornAnimation.isAnimating=true;
  }
  if (key=='w') {
    p1.isMovingUp=true;
    movementSound.play();
    unicornAnimation.isAnimating=true;
  }
  if (key=='s') {
    p1.isMovingDown=true;
    movementSound.play();
    unicornAnimation.isAnimating=true;
  }

  //player 2
  if (keyPressed==true) {
    if (key==CODED) {
      if (keyCode==DOWN) {
        p2.isMovingDown=true;
        movementSound.play();
        unicornnAnimation.isAnimating=true;
      }
    }
  }
  if (keyPressed==true) {
    if (key==CODED) {
      if (keyCode==UP) {
        p2.isMovingUp=true;
        movementSound.play();
        unicornnAnimation.isAnimating=true;
      }
    }
  }
  if (keyPressed==true) {
    if (key==CODED) {
      if (keyCode==RIGHT) {
        p2.isMovingRight=true;
        movementSound.play();
        unicornnAnimation.isAnimating=true;
      }
    }
  }
  if (keyPressed==true) {
    if (key==CODED) {
      if (keyCode==LEFT) {
        p2.isMovingLeft=true;
        movementSound.play();
        unicornnAnimation.isAnimating=true;
      }
    }
  }
}

void keyReleased() {
  if (key=='a') {
    p1.isMovingLeft=false;
    unicornAnimation.isAnimating=false;
  }
  if (key=='d') {
    p1.isMovingRight=false;
    unicornAnimation.isAnimating=false;
  }
  if (key=='w') {
    p1.isMovingUp=false;
    unicornAnimation.isAnimating=false;
  }
  if (key=='s') {
    p1.isMovingDown=false;
    unicornAnimation.isAnimating=false;
  }
  //player 2
  if (keyCode==DOWN) {
    p2.isMovingDown=false;
    movementSound.play();
    unicornnAnimation.isAnimating=false;
  }
  if (keyCode==UP) {
    p2.isMovingUp=false;
    movementSound.play();
    unicornnAnimation.isAnimating=false;
  }

  if (keyCode==RIGHT) {
    p2.isMovingRight=false;
    movementSound.play();
    unicornnAnimation.isAnimating=false;
  }

  if (keyCode==LEFT) {
    p2.isMovingLeft=false;
    movementSound.play();
    unicornnAnimation.isAnimating=false;
  }
}
void mousePressed() {
  setup();
  state=1;
}

void p1Loses() {
  if (p1.health<=0) {
    state=2;
  }
}

void p2Loses() {
  if (p2.health<=0) {
    state=3;
  }
}
