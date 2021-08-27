final int SCREENX = 400;
final int SCREENY = 500;
final int PADDLEHEIGHT = 25;
final int PADDLEWIDTH = 80;
final int MARGIN = 10;
final int LIVES_TO_WIN = 3;

Player thePlayer;
Ball theBall;
Player computerPlayer;
int compLives=0;
int playerLives=0;

void settings() {
  size(SCREENX, SCREENY);
}

void setup() {
  noStroke();
  thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
  computerPlayer = new Player(MARGIN);
  theBall = new Ball();
  ellipseMode(RADIUS);
  frameRate(60);
}

void draw() {
  background(255);
  thePlayer.move(mouseX);
  theBall.move();
  thePlayer.computerPlayerMove();

  theBall.collisionPlayer(thePlayer);
  theBall.collisionComputer(computerPlayer);
  theBall.collisionWithSides();

  thePlayer.draw();
  theBall.draw();
  computerPlayer.draw();
  ballOffScreen();
  thePlayerDeaths();
  gameOver();
  scoreboard();
}

void ballOffScreen() {
  if (theBall.y < theBall.radius)
  {
    reset();
  }
  if (theBall.y > SCREENY - theBall.radius)
  {
    reset();
  }
}
void mousePressed() {
  loop();
}
void reset() {
  background(255);
  thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
  computerPlayer = new Player(MARGIN);
  theBall = new Ball();
  background(255);
  thePlayer.draw();
  theBall.draw();
  computerPlayer.draw();
  noLoop();
}
void thePlayerDeaths() {
  if (theBall.y < theBall.radius)
  {
    playerLives++;
    reset();
  } else if (theBall.y > SCREENY - theBall.radius)
  {
    compLives++;
    reset();
  }
}

void gameOver() {
  if (playerLives == 3)
  {
    fill(0);
    text("GAME OVER!", 200, 250);
    playerLives=0;
    compLives=0;
  } else if (compLives == 3)
  {
    fill(0);
    text("You have won the game!", 200, 250);
    compLives=0;
    playerLives=0;
  }
}
void scoreboard() {
  fill(100, 0, 0);
  text(compLives, 50, 50);
  text(playerLives, 200, 450);
}
