class Rainbow {
  int x;
  int y;

  int left;
  int right;
  int top;
  int bottom;

  boolean exists;

  Rainbow(int startingX, int startingY) {
    x = startingX;
    y = startingY;

    left = x - rainbowAnimation.images[0].width/2;
    right = x + rainbowAnimation.images[0].width/2;
    top = y - rainbowAnimation.images[0].height/2;
    bottom = y + rainbowAnimation.images[0].height/2;

    exists = true;
  }

  void render() {
    rainbowAnimation.display(x, y);
    rainbowAnimation.isAnimating = true;
  }

  void collide(Player aPlayer) {
    if (aPlayer.top<=bottom&&
      aPlayer.bottom>=top&&
      aPlayer.left<right&&
      aPlayer.right>=right) {
      exists = false;
      aPlayer.score+=1;
    }
  }
}
