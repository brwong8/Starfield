star[] particles;
void setup() {
size(400,400);
particles = new star[100]; // different particles
for(int i = 0; i < 1; i++){
  particles[i] = new oddball();
}
for(int i = 1; i < particles.length; i++){
  particles[i] = new star(); //remember this
}
}

void draw() {
  fill(0,0,0,60);
  rect(0,0,400,400);
  noStroke();
//  background(0);
  for(int i = 0; i < particles.length; i++) {
    particles[i].move();
    particles[i].show();
  }
}

class star{
  double x, y,mySpeed,myAngle;
  int myColor,mySize;
  star(){
    x = y = 200; // center
    myColor = color(250, (int)(Math.random()*250)+240,(int)(Math.random()*250)+240);
    mySpeed = (Math.random()*2)+1;
    myAngle = ((Math.random()*2)*Math.PI);
    mySize = 20;
  }
  void move() {
    //frameRate((float)mySpeed);
   x= x + Math.cos(myAngle)*mySpeed;
   y= y + Math.sin(myAngle)*mySpeed;
 
 if(x > 400 || y > 400 || x < 0 || y < 0){
   mySpeed = (Math.random() * 2)+1;
 x = y = 200 ;
}
    
  }
  void show() {
    int hi = (int)(Math.random() * 2);
    fill(myColor);
    ellipse((float)x ,(float)y ,mySize,mySize); 
    if(hi == 0){
  fill(0);
  ellipse((float)x-5,(float)y,5,5); 
     ellipse((float)x+5,(float)y,5,5); 
   rect((float)x-5,(float)y+5,10,1);
    }
    frameRate(10);
    fill(0);
    rect((float)x-5,(float)y,5,1);
    rect((float)x+5,(float)y,5,1);
    rect((float)x-5,(float)y+5,10,1);
  }
}
class oddball extends star{
  oddball() {
      x = y = 200;
      myColor = color(55, 219, 99);
    mySpeed =(Math.random()*2)-1;
 myAngle = (Math.random()*1);
    mySize = 30;
    
   
  }
  void move() {
    x = x + (Math.random() * 4)-2;
    y = y + (Math.random() * 4)-2;
   
  }

 
}




