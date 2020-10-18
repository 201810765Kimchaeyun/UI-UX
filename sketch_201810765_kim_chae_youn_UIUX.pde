PFont font;
float angle=0.0;
float turn=0.0;
float x1=0.0;
float y1=0.0;
float x2=0.0;
float y2=0.0;
float x3=0.0;
float y3=0.0;
float x4=0.0;
float y4=0.0;
float ax=0.0;
float ay=0.0;
float aw=0.0;
float ah=0.0;
float ew=0.0;
float eh=-0;
float i=0.0;
float j=0.0;
float begin=0.0;
float end=310;
float pct=0.0;
float distance;
float speed=0.02;
float y=0.0;
float yy=0.0;
float i2=0.0;
float j2=0.0;
float m=150.0;
float n=300.0;
float tm=0.0;
float to1=0.0;
float to2=0.0;
float to3=0.0;
float to4=0.0;
float cl=200.0;

void setup() {
  size(1000, 1000);
  font=loadFont("BradleyHandITC-32.vlw");
  textFont(font);
  smooth();
  frameRate(30);
  distance=end-begin;
}

void draw() {
  background(200);

  fill(0, cl);
  textSize(40);
  text("Click !", 450, 50);

  translate(500, 500);
  rotate(radians(angle));

  fill(71, 68, 55);
  stroke(71, 68, 55);
  strokeWeight(0);
  ellipse(0, -355, 480, 80);
  ellipse(0, -325, 480, 80); 
  rect(-235, -360, 470, 30);

  fill(249, 249, 217);
  stroke(249, 249, 217);
  strokeWeight(30);
  strokeCap(ROUND);
  strokeJoin(ROUND);
  triangle(-150, -300, 150, -300, 0, 0); 
  ellipse(0, -300, 300, 50); 

  fill(71, 68, 55);
  stroke(71, 68, 55);
  strokeWeight(0);
  rect(-210, -330, 30, 700);
  rect(180, -330, 30, 700);

  fill(255);
  textSize(28);
  text("Hourglass", -55, -367);

  fill(71, 68, 55);
  stroke(71, 68, 55);
  strokeWeight(0);
  ellipse(0, 355, 480, 80);
  ellipse(0, 325, 480, 80);
  rect(-235, 320, 470, 30);

  rotate(radians(180));
  fill(255);
  textSize(28);
  text("Our glass", -55, -367);
  rotate(radians(180));

  fill(249, 249, 217);
  stroke(249, 249, 217);
  strokeWeight(30);
  triangle(0, 0, 150, 300, -150, 300);
  ellipse(0, 300, 300, 50); 

  stroke(230, 222, 72);
  strokeWeight(0);
  fill(230, 222, 72);
  quad(-80+x1, 150+y1, 80+x2, 150+y2, 150+x3-i, 300+y3-j, -150+x4+i, 300+y4-j); //sand
  arc(0+ax, 300+ay, 300+aw, 60+ah, radians(0), radians(180));

  if (angle==180) {
    cl=0;
    pct+=speed;
    if (pct<1.0) {
      y=begin+(pct*distance);
    }
    fill(230, 222, 72);
    rect(-3.5, 5, 7, 0-y); //snad box
    if ( y>300 && ew<288 && eh<50) {
      ew+=4;
      eh+=0.5;
    }
    strokeWeight(10);
    stroke(230, 222, 72);
    ellipse(0, -300, 0+ew, 0+eh);
    if (ew>=275 && eh>=32 && j2<=155 &&i2<=115) {
      i2+=0.4;
      j2+=0.7;
      tm=-300+n+j2;
      m=0;
      n=0;
    }
    strokeWeight(0);
    quad(150-m-i2, -300+n+j2, -150+m+i2, -300+n+j2, -150+m, -300+n, 150-m, -300+n);
    fill(0);
    if (i<=125 && j<=245) {
      i+=0.4;
      j+=0.8;
    }
    if (i>=120 && j>=240 && yy<=151) {
      yy+=7;
    }
    fill(249, 249, 217);
    strokeWeight(0);
    stroke(249, 249, 217);
    rect(-4.5, 10, 13, 0-yy); //white

    rotate(radians(angle));
    fill(0, (j2*10));
    text("Hour", -30, 300);
    if ((j2*10)/4>=100) {
      to1+=2;
    }
    fill(0, to1);
    text("Day", -30, 260);
    if ((j2*10)/6>=150) {
      to2+=2;
    }
    fill(0, to2);
    text("Year", -30, 220);
    if ((j2*10)/5>=250) {
      to3+=3;
    }
    fill(0, to3);
    text("Life", -30, 180);
  }
}

void mousePressed() {
  turn+=1;
  if (turn<7) {
    angle+=30;
  }
  if (turn==1) {
    y1=10;
    x2=-10;
    y2=-20;
    ah=-10;
  }
  if (turn==2) {
    x1=55;
    y1=55;
    x2=-20;
    y2=-30;
    x4=30;
    ax=15;
    aw=-28;
    ah=-10;
  }
  if (turn==3) {
    x1=77;
    y1=85;
    x2=-60;
    y2=-120;
    x4=140;
    ax=70;
    aw=-140;
    ah=-10;
  }
  if (turn==4) {
    x1=80;
    y1=-130;
    x2=-67;
    y2=-135;
    x3=-5;
    y3=-20;
    x4=90;
    y4=-70;
    ax=30;
    ay=-100;
    aw=-150;
    ah=-20;
  }
  if (turn==5) {
    x1=73;
    y1=-140;
    x2=-73;
    y2=-140;
    x3=-7;
    y3=-25;
    x4=60;
    y4=-65;
  }
  if (turn==6) {
    x1=76;
    y1=-145;
    x2=-76;
    y2=-145;
    x3=-20;
    y3=-50;
    x4=20;
    y4=-50;
    aw=-300;
    ah=-60;
  }
}
