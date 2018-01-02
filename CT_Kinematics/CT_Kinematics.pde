Segment tentacle;
Segment tentacle2;
Segment tentacle3;
Segment tentacle4;
Segment tentacle5;
//Segment seg2;

void setup(){
  size(600, 400);
  float t = 0;
  float len = 15;
  int num = 15;
  tentacle = new Segment(width/2, height-30, len, 0, 0);
  tentacle2 = new Segment(width/2+90, height-30, len, 0, 0);
  tentacle3 = new Segment(width/2-90, height-30, len, 0, 0);
  tentacle4 = new Segment(width/2+180, height-30, len, 0, 0);
  tentacle5 = new Segment(width/2-180, height-30, len, 0, 0);
  
  Segment current = tentacle;
  for(int i = 0; i < num; i++){
    t += 0.1;
    Segment next = new Segment(current, len,0, i);
    
    current.child = next;
    current = next;
    
  }
  Segment current2 = tentacle2;
  for(int i = 0; i < num; i++){
    t += 0.1;
    Segment next = new Segment(current2, len,0, i);
    
    current2.child = next;
    current2 = next;
    
  }
  Segment current3 = tentacle3;
  for(int i = 0; i < num; i++){
    t += 0.1;
    Segment next = new Segment(current3, len,0, i);
    
    current3.child = next;
    current3 = next;
    
  }
  Segment current4 = tentacle4;
  for(int i = 0; i < num; i++){
    t += 0.1;
    Segment next = new Segment(current4, len,0, i);
    
    current4.child = next;
    current4 = next;
    
  }
  Segment current5 = tentacle5;
  for(int i = 0; i < num; i++){
    t += 0.1;
    Segment next = new Segment(current5, len,0, i);
    
    current5.child = next;
    current5 = next;
    
  }
  
    
}


void draw() {
  background(51);
  
  Segment next = tentacle;
  
  while(next != null){
    next.wiggle();
    next.update();
    next.show();
    next = next.child;

  }
  next = tentacle2;
    while(next != null){
    next.wiggle();
    next.update();
    next.show();
    next = next.child;

  }
  
  next = tentacle3;
    while(next != null){
    next.wiggle();
    next.update();
    next.show();
    next = next.child;

  }
    next = tentacle4;
    while(next != null){
    next.wiggle();
    next.update();
    next.show();
    next = next.child;

  }
    next = tentacle5;
    while(next != null){
    next.wiggle();
    next.update();
    next.show();
    next = next.child;

  }
  fill(255);
  ellipse(280,380,20,20);
  ellipse(320,380,20,20);
  ellipse(200,380,10,10);
  ellipse(220,380,10,10);
  ellipse(400,380,10,10);
  ellipse(380,380,10,10);
  ellipse(110,380,10,10);
  ellipse(130,380,10,10);
  ellipse(490,380,10,10);
  ellipse(470,380,10,10);

}