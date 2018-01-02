Segment tentacle;


void setup(){
  size(600,400);
  
  Segment current =  new Segment(300,200, 10, 0);
  for(int i = 0; i < 20; i++) {
    Segment next = new Segment(current, 10, i);
    current.child = next;
    current = next;
    
  }
  tentacle = current;
  
  
}

void draw(){
  background(51);
  
  
  
  tentacle.follow(mouseX, mouseY);
  tentacle.update();
  tentacle.show();
  Segment next = tentacle.parent;
  int i = 0;
  while(next != null){
    next.follow();
    next.update();
    next.show();
    
    next = next.parent;
    i++;
    if(i == 19){
      
      next.myRect();
      next.update();
    }
  }

  
  
  //seg1.update();
  //seg1.show();
  //seg2.update();
  //seg2.show();
  //seg2.follow(mouseX, mouseY);
  //seg1.follow(seg2.a.x, seg2.a.y);
}