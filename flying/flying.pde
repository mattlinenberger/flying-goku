PImage gflying;
PImage bgimage;
PImage fireball;

//PFont font;
//PImage b1;
//PImage b2;
//PImage b3;
//PImage b4;
//PImage b5;
//PImage b6;
float bgx;
float x;
float y;
int d;
float up;
float down;

/*************************************************/

//float speed;
void setup() {
  background(0);
  size(600, 400);
  noCursor();
  gflying = loadImage("gflying.gif");
  bgimage = loadImage("bgimage.png");
  fireball = loadImage("fireballv2.gif");
  //font = createFont("scoreboard.ttf",40);
  //  b1 = loadImage("b1.png");
  //   b2 = loadImage("b2.png");
  //    b3 = loadImage("b3.png");
  //     b4 = loadImage("b4.png");
  //      b5 = loadImage("b5.jpg");
  //       b6 = loadImage("b6.jpg");

  bgx += 2;
  x = random(800, 850);
  y = random(0, 275);
  d = 1;
  up = 1;
  down = -1;
}
/**********************************/


void draw() {



  //Background//
  bgx = bgx - 10;

  image(bgimage, bgx, 0, 1600, 400);

  //DISTANCE COUNTER
  d += 1;

  //  //Speed Increase
  if (d >= 250)//@
    bgx = bgx - 4;

  if (d >= 1000)//@2000
      bgx = bgx - 5;


  if (d >= 2500)
    bgx = bgx - 6;


  if (d >= 5000)
    bgx = bgx -7;










  //image(bgimage, bgx, 0);

  //Distance box
  //dropshadow
  fill(0);
  rect(373, 368, 300, 100);
  //actualbox
  fill(255);
  rect(375, 370, 225, 100);
  fill(0);
  textSize(40); 
  // textFont(font);
  text((d + d), 375, 400);
  //distance words
  textSize(20);
  fill(0);
  text("Distance", 290, 390);



  if (bgx <= -800)
    bgx = 0;




  /*************************************************/
  //fireball//
  x = x - 10;//ball speed

  fill(0);
  //ellipse(x,y,50,50);
  image(fireball, x, y, 70, 70); //fireball
  //image(fireball, x, y, 30,30);//fireball
  if (x <= -550) {
    x = random(800, 850);
    y = 100;//random(0, 275);
    image(fireball, x, y, 20, 20);
  }
  if (x <= 100 && y+80 > up && y-70 < up){
  d= 0;}
  println("x=",x,"y=",y,"up=",up);
  
  translate(-550, 0);
  image(gflying, 100, up);


//up = mouseY;




  println(bgx);
  println(y);
  println(mousePressed);
}
void keyPressed(){
   if (key == CODED) {
    if (keyCode == UP) {
      up = up - 1;
    } else if (keyCode == DOWN) {
      up = up + 1;
    }
  }



}

