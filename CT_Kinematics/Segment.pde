class Segment{
  PVector a;
  float len;
  float angle;
  float selfAngle;
  
  //float xoff = random(1000);
  float t;
  
  Segment parent = null;
  Segment child = null;
  
  PVector b;
  
  Segment(float x, float y, float len_, float angle_, float t_){
    a = new PVector(x,y);
    len = len_;
    angle = angle_;
    calculateB();
    parent = null;
    t = t_;
    
  }
  
    Segment(Segment parent_, float len_, float angle_, float t_){
    parent = parent_;
    a = parent.b.copy();
    len = len_;
    angle = angle_;
    selfAngle = angle;
    calculateB();
    t = t_;
    
  }
  
  void wiggle(){
    float maxangle = 0.25;
    float minangle = -0.25;
    //selfAngle = map(noise(t), 0,1,maxangle,minangle);
    selfAngle = map(sin(t), -1,1,maxangle,minangle);
    t += 0.05;
    //selfAngle = selfAngle + 0.01;
  }
  
  void update(){
    angle = selfAngle;
    if (parent != null){
      a = parent.b.copy();
      
      angle += parent.angle;
    }else{
      angle +=-(3.14/2);
    }
    
    calculateB();
    show();
    
  }
  
  void calculateB(){
    float dx = len* cos(angle);
    float dy = len * sin(angle);
    b = new PVector(a.x+dx, a.y+dy);
  }
  
  
  void show(){
    
      strokeWeight(15);
      
      if(angle > -1.5){
        stroke(150);
      }
      else{
        stroke(255);
      }

      line(a.x, a.y, b.x, b.y);
      
      
  }
}